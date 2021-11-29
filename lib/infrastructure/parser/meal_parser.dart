import 'package:meal_app/domain/core/meal_detail.dart';

import '../../domain/json_parser/parent_parser.dart';

class MealParser extends ParentParser<MealDetail>
    with ObjectDecoder<MealDetail> {
  @override
  Future<MealDetail> parseFromJson(String json) async {
    final decodedString = decodeJson(json);
    return MealDetail.fromJson(decodedString);
  }
}
