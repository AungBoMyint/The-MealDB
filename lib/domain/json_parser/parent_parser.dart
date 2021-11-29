export '../json_decoder/decoder.dart';

abstract class ParentParser<T> {
  Future<T> parseFromJson(String json);
}
