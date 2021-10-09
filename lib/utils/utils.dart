import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:uuid/uuid.dart';

Future<void> signUp() async {
  var uuid = Uuid();
  final response = await http.post(
    Uri.parse('https://wh4l9w.deta.dev/create_new_user'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': "title",
    }),
  );
}
