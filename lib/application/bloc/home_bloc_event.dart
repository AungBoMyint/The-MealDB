part of 'home_bloc_bloc.dart';

@freezed
class HomeBlocEvent with _$HomeBlocEvent {
  const factory HomeBlocEvent.getAreaList() = GetAreaList;
  const factory HomeBlocEvent.getCategoryList() = GetCategoryList;
  const factory HomeBlocEvent.changeFoodList({
    required Map<String, dynamic> query,
    required String url,
  }) = ChangeFoodList;
  const factory HomeBlocEvent.changArea({
    required String dropDownString,
  }) = ChangeArea;
  const factory HomeBlocEvent.changeCategory({
    required String categoryName,
    required int index,
  }) = ChangeCategory;
  const factory HomeBlocEvent.searchMeal({required String searchText}) =
      SearchMeal;
  const factory HomeBlocEvent.requestMealDetail({
    required String id,
  }) = RequestMealDetail;
  const factory HomeBlocEvent.addExpansionTileValue({
    required bool value,
  }) = AddExpansionTileValue;
}
