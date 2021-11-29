import 'dart:convert';

import 'package:meal_app/domain/json_parser/parent_parser.dart';

mixin ObjectDecoder<T> on ParentParser<T> {
  Map<String, dynamic> decodeJson(String json) =>
      jsonDecode(json) as Map<String, dynamic>;
}

mixin ListDecoder<T> on ParentParser<T> {
  List<dynamic> decodeJson(String json) => jsonDecode(json) as List<dynamic>;
}
