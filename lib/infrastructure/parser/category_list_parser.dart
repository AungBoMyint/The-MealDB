import 'package:meal_app/domain/core/category_list.dart';

import '../../domain/json_parser/parent_parser.dart';

class CategoryListParser extends ParentParser<CategoryList>
    with ObjectDecoder<CategoryList> {
  @override
  Future<CategoryList> parseFromJson(String json) async {
    final decodedString = decodeJson(json);
    return CategoryList.fromJson(decodedString);
  }
}
