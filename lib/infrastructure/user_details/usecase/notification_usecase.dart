//
import 'dart:convert';
import 'dart:developer';
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@lazySingleton
class NotificationServeice {
  NotificationServeice();

  Future<void> sendFcmMessage({
    required String token,
    required String body,
    required String title,
  }) async {
    final result = await _obtainAuthenticatedClient();
    const url =
        'https://fcm.googleapis.com/v1/projects/kenza-gold/messages:send';

    // Replace with your notification details
    final notification = <String, dynamic>{
      'title': title,
      'body': body,
      // You can add 'image' here if needed
    };

    // Replace with your custom data
    final data = <String, dynamic>{
      'key': 'value1',
      'key2': 'value2',
    };

    // Construct the FCM message
    final message = <String, dynamic>{
      'message': {
        'token': token,
        'notification': notification,
        'data': data,
      },
    };

    // Convert the message to JSON
    final jsonMessage = jsonEncode(message);

    // Make the POST request to send the FCM message
    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${result.credentials.accessToken.data}',
      },
      body: jsonMessage,
    );

    // Check the response
    if (response.statusCode == 200) {
      log('FCM message sent successfully');
    } else {
      log('Failed to send FCM message. Status code: ${response.statusCode}');
      log('Response body: ${response.body}');
    }
  }

  Future<AuthClient> _obtainAuthenticatedClient() async {
    final accountCredentials = ServiceAccountCredentials.fromJson({
      "type": "service_account",
      "project_id": "kenza-gold",
      "private_key_id": "7ccb4d2443803a88971ee1233e317e223cb33884",
      "private_key":
          "-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQCsWjuhMl7iCCQy\niUCidoSGUNj3y4CLl+88HXBw768uOYLeQbitOcTNWe19v9W1XK3iqv5+fZkI3JFr\nxZUdselSByfxrT9BRkKu5WZQ0ZUAU00h/+hRD5iaqmCpF9TXn3mXujvRzr1lOUuP\nehKmtdWmo8i22Dgue0LZTKG4ADMfo1656PL9y9bKUK6DjsHsRbi7ZcfeEELtKTej\nKG7bFaFxp8WKgBJC9mQfg37HvRCU/Rjy5WUIhMkQmZzJX0O7Ln5m1kl+iNjFr/dT\ndRlVxFtyMUUrxv9dWxM7UHYJTUKoDTHbymAmYWWaGpFISTyvZNhLRP1L6QTP73sY\nimA8qAgPAgMBAAECggEAJyeOoWXIkXAJDSQKN35WSA9I4y5rowreshj8COQit40g\nMm7azhuwHni+D9HLcpq99B8llsXgxNcbAFFQOYFIALcYd3qEwsb78jCySEz8nSjP\nfphdBkFVSVnIgNGlrGCR5orL+TOO6laUWGGCqDXp9iQCPqurQ8AD5UrX+G2vL5H1\nuVqmKjJSH7fQ7JZp2fmR/0PdTgfe5baMssHUlX4v6X9JBPMMpNsGjgXlmYktkaqB\n8W5GzNpRF7cnaaXPVzJ+Knib+2IxmMREuyWVSkxsKov5HUEkGrSftjRy3K4X380Q\neXCPyVj/W3ZTpLl2Xn7H8oKBWHIKfj7Jww0iI2A8pQKBgQDabmxqs9IJ3+1tLwPD\n+egJdOmbhXxnSY24YV/g6qYYSn3VIIxd8JITL03T+IxxJJzwEFdBfb3pyK+30PAS\nFX4wcPOvTJsvt9DafHWO4jmCazWFbiESaBQM5XrknLiju3TwBJyP+nWbtjGKu8vX\ny9HRuNi9sPARsEk5QiRk7P4vJQKBgQDJ/vKJqsxS+vJwlROcnFfj/xZdD0zfLgG2\nEVQxjDaHcpNOfUtpbKCyNOcEfzR9YR9wFGyN1g1hDA4wk/aTKmPTaoK1ozYO3QY6\n6hiK7Ry+V4u0/Yej1Sd7nyyuyBCF9ap4UjjW7AV/3DIDqvcYUprm19irtTjG02MY\nbWbuxrheIwKBgB6Bp5Crdp08cgt6snrvbzHK60l2Ni6yviFPMDXYb8Qau0JF3nTM\nQYp+Y89D+lFe/LAmiBk0d46sIaZ5ft33tH0NeWs1NsNOV9P75+tBuyh00q/E9sd8\nU7iNYEGHhd4QMz/GVRtiroRFyNuIaOrFo5M3zsWHba/6v+9IRo717nYlAoGAENKM\nvG5fCeIgYsPnmDllEHXkFOf7TPL17YXP7zhwKiOepQDGUQdc8rp5KuS1KGP4TEtH\nJyDWiGiKnf0Uofj7y1WpgRsQm3hI1os8dAV/SVLdLbuXmktcOG1vOTcsORvWkKK4\nXR3W72kVOTz5yyrF/8emIda73cMpE5W45tXh8OUCgYBLwPLilihzovcfaycLPVHE\n1oUPKktcBYWgE/TduyU5p6q5eQXLQyMQj4kLjanpxmqOgZ2iFj9bpLm2UmLAQaKG\nVp8d6hhcXqvlhwr45uM/Q+u9svUYxWOmQ3+gPcmrwCzQbcfnzUgFGdtuzI+3jTv+\nsaqSUFcPJgDmVVC8e0X19A==\n-----END PRIVATE KEY-----\n",
      "client_email":
          "firebase-adminsdk-c8ifn@kenza-gold.iam.gserviceaccount.com",
      "client_id": "106716777446604036930",
      "auth_uri": "https://accounts.google.com/o/oauth2/auth",
      "token_uri": "https://oauth2.googleapis.com/token",
      "auth_provider_x509_cert_url":
          "https://www.googleapis.com/oauth2/v1/certs",
      "client_x509_cert_url":
          "https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-c8ifn%40kenza-gold.iam.gserviceaccount.com",
      "universe_domain": "googleapis.com"
    });
    const messagingScope = 'https://www.googleapis.com/auth/firebase.messaging';
    final scopes = [messagingScope];

    final AuthClient client =
        await clientViaServiceAccount(accountCredentials, scopes);

    return client;
  }
}
