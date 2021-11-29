import '../../domain/json_parser/parent_parser.dart';
import 'package:meal_app/domain/core/area_list.dart';

class AreaListParser extends ParentParser<AreaList>
    with ObjectDecoder<AreaList> {
  @override
  Future<AreaList> parseFromJson(String json) async {
    final decodedString = decodeJson(json);
    return AreaList.fromJson(decodedString);
  }
}
