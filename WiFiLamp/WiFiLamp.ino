#include <ESP8266WiFi.h>
#include <ESP8266mDNS.h>

/* Milliseconds / 10 */
#define TIMEOUT 5000/10

const char* ssid = "WiFi Network";
const char* password = "Some Very Secret Password";

WiFiServer webServer(80);

short int lampStatus = -1;

void setup() {
  Serial.begin(115200);
  delay(10);

  pinMode(0, OUTPUT);
  pinMode(2, OUTPUT);

  digitalWrite(0, LOW);
  digitalWrite(2, LOW);

  /* WiFi Setup */
  Serial.print("\nConnecting to ");
  Serial.println(ssid);

  WiFi.begin(ssid, password);

  while(WiFi.status() != WL_CONNECTED) {
    delay(500);
    Serial.print(".");
  }

  Serial.print("\nWiFi connected, IP: ");
  Serial.println(WiFi.localIP());


  /*
   * Set up mDNS responder:
   * - first argument is the domain name, in this example
   *   the fully-qualified domain name is "wifilamp.local"
   * - second argument is the IP address to advertise
   *   we send our IP address on the WiFi network
   */
  if (!MDNS.begin("wifilamp")) {
    Serial.println("Error setting up MDNS responder!");
    while(1) {
      delay(1000);
    }
  }
  Serial.println("mDNS responder started");

  /* Web Server setup */
  Serial.println("Starting Web Server ...");
  webServer.begin();
  Serial.println("Server started");

  /* Add service to MDNS-SD */
  MDNS.addService("http", "tcp", 80);
}

void loop() {
  WiFiClient client = webServer.available();
  if (!client) {
    return;
  }

  /* Wait the client to send data */
  Serial.print("Client connected, waiting for data");
  unsigned int timeout = 0;
  while(!client.available()) {
    if (timeout++ == TIMEOUT) {
      client.stop();
      Serial.println("TIMEOUT!!!\nDisconnecting client\n");
      return;
    }
    delay(10);
    Serial.print(".");
  }
  Serial.println("\nData Available");

  /* Read the first line of the request */
  String request = client.readStringUntil('\r');
  Serial.println(request);
  client.flush();

  /* Spliting 'String', source: http://arduino.stackexchange.com/a/1033 */
  const char* tokens;
  tokens = request.c_str();

  unsigned short int count = 0;
  const char* token;
  const char* method;
  const char* path;
  const char* protocol;
  token = strtok((char*)tokens, " ");
  /*
   * If it is a valid HTTP Request, the struct is:
   * METHOD PATH PROTOCOL
   */
  while(token != NULL) {
    switch (count++) {
    case 0:
      method = token;
      break;
    case 1:
      path = token;
      break;
    case 2:
      protocol = token;
      break;
    }
    Serial.print("Token: ");
    Serial.println(token);
    token = strtok(NULL, " ");
  }
  Serial.println("Split tokens");

  Serial.print("Method: ");
  Serial.println(method);

  Serial.print("Path: ");
  Serial.println(path);

  Serial.print("Protocol: ");
  Serial.println(protocol);

  String strPath = String(path);

  /* "Routing" the request. */
  if (strPath == "/") {
    index(client);
  } else  if (strPath == "/LAMP=ON") {
    lampOn();
    index(client);
  } else  if (strPath == "/LAMP=OFF") {
    lampOff();
    index(client);
  } else {
    return404(client);
  }

  delay(1);
  client.stop();
  Serial.println("Client disonnected");
  Serial.println("");
}


void index(WiFiClient client) {
  Serial.println("Sending response....");

  /* HTTP Status line */
  client.println("HTTP/1.1 200 OK");

  /* HTTP Headers */
  client.println("Content-Type: text/html");

  /* Blank line after headers*/
  client.println("");

  /* Response Body */
  client.println("<!DOCTYPE HTML>");
  client.println("<html>");
  client.println("<head> <title>Lamp Controller</title></head>");
  client.println("<body>");

  if (lampStatus != -1) {
    client.print("<h2>The Lamp is now: ");

    if(lampStatus == HIGH) {
      client.print("On");
    } else {
      client.print("Off");
    }
    client.println("</h2>");

  } else {
    client.println("<h2>What would you like to do?</h2>");
  }

  client.println("<a href=\"/LAMP=ON\"\"><button>Turn Lamp On </button></a>");
  client.println("<a href=\"/LAMP=OFF\"\"><button>Turn Lamp Off </button></a>");
  client.println("</body></html>");
}

void return404(WiFiClient client) {
  Serial.println("Sending response....");
  /* HTTP Status line */
  client.println("HTTP/1.1 404 Not Found");

  /* HTTP Headers */
  client.println("Content-Type: text/html");

  /* Blank line after headers*/
  client.println("");

  /* Response Body */
  client.println("<!DOCTYPE HTML>");
  client.println("<html>");
  client.println("<head> <title>Lamp Controller</title></head>");
  client.println("<body>");

  client.println("<p><h1>404 - Not found</h1></p>");

  client.println("<a href=\"\\\">Got to Home</a>");
  client.println("</p>");

  client.println("</body></html>");
}

void lampOn(){
  lampStatus = HIGH;
  digitalWrite(0, HIGH);
  delay(1000);
  digitalWrite(0, LOW);
}

void lampOff() {
  lampStatus = LOW;
  digitalWrite(2, HIGH);
  delay(1000);
  digitalWrite(2, LOW);
}