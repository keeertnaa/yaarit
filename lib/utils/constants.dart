import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class Constants {
    // Initialize Constants.uri with a valid URL
    static String uri = 'http://localhost:3000';

    // var client = http.IOClient(
    // HttpClient()..badCertificateCallback =
    //     (X509Certificate cert, String host, int port) => true,
    // );

    // // Make the HTTP request using the custom client
    // var response = await client.get(Uri.parse(uri));
}