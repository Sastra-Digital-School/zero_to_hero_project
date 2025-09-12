import 'package:flutter_dotenv/flutter_dotenv.dart';

String http = dotenv.env['http'] ?? "";
String domain = dotenv.env['domain'] ?? "";

String baseUrl = '$http://$domain';
