import 'package:meal_app/domain/core/foodlist_by_something.dart';

import '../../domain/json_parser/parent_parser.dart';

class FoodListBySomethingParser extends ParentParser<FoodListBySomething>
    with ObjectDecoder<FoodListBySomething> {
  @override
  Future<FoodListBySomething> parseFromJson(String json) async {
    final decodedString = decodeJson(json);
    return FoodListBySomething.fromJson(decodedString);
  }
}
