part of 'home_bloc_bloc.dart';

@freezed
class HomeBlocState with _$HomeBlocState {
  const factory HomeBlocState({
    Future<AreaList>? areaList,
    Future<CategoryList>? categoryList,
    FoodListBySomething? foodList,
    MealDetail? mealDetail,
    required bool isLoading,
    required bool hideLoading,
    String? dropDownAreaValue,
    int? categoryIndex,
    String? searchText,
    required bool isExpand,
    required String foodListType,
  }) = _HomeBlocState;

  factory HomeBlocState.initial() => const HomeBlocState(
        areaList: null,
        foodList: null,
        isLoading: false,
        hideLoading: false,
        foodListType: '',
        mealDetail: null,
        isExpand: false,
      );
}
