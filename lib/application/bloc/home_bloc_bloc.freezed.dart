// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeBlocEventTearOff {
  const _$HomeBlocEventTearOff();

  GetAreaList getAreaList() {
    return const GetAreaList();
  }

  GetCategoryList getCategoryList() {
    return const GetCategoryList();
  }

  ChangeFoodList changeFoodList(
      {required Map<String, dynamic> query, required String url}) {
    return ChangeFoodList(
      query: query,
      url: url,
    );
  }

  ChangeArea changArea({required String dropDownString}) {
    return ChangeArea(
      dropDownString: dropDownString,
    );
  }

  ChangeCategory changeCategory(
      {required String categoryName, required int index}) {
    return ChangeCategory(
      categoryName: categoryName,
      index: index,
    );
  }

  SearchMeal searchMeal({required String searchText}) {
    return SearchMeal(
      searchText: searchText,
    );
  }

  RequestMealDetail requestMealDetail({required String id}) {
    return RequestMealDetail(
      id: id,
    );
  }

  AddExpansionTileValue addExpansionTileValue({required bool value}) {
    return AddExpansionTileValue(
      value: value,
    );
  }
}

/// @nodoc
const $HomeBlocEvent = _$HomeBlocEventTearOff();

/// @nodoc
mixin _$HomeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocEventCopyWith<$Res> {
  factory $HomeBlocEventCopyWith(
          HomeBlocEvent value, $Res Function(HomeBlocEvent) then) =
      _$HomeBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeBlocEventCopyWithImpl<$Res>
    implements $HomeBlocEventCopyWith<$Res> {
  _$HomeBlocEventCopyWithImpl(this._value, this._then);

  final HomeBlocEvent _value;
  // ignore: unused_field
  final $Res Function(HomeBlocEvent) _then;
}

/// @nodoc
abstract class $GetAreaListCopyWith<$Res> {
  factory $GetAreaListCopyWith(
          GetAreaList value, $Res Function(GetAreaList) then) =
      _$GetAreaListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetAreaListCopyWithImpl<$Res> extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $GetAreaListCopyWith<$Res> {
  _$GetAreaListCopyWithImpl(
      GetAreaList _value, $Res Function(GetAreaList) _then)
      : super(_value, (v) => _then(v as GetAreaList));

  @override
  GetAreaList get _value => super._value as GetAreaList;
}

/// @nodoc

class _$GetAreaList implements GetAreaList {
  const _$GetAreaList();

  @override
  String toString() {
    return 'HomeBlocEvent.getAreaList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetAreaList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return getAreaList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return getAreaList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (getAreaList != null) {
      return getAreaList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return getAreaList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return getAreaList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (getAreaList != null) {
      return getAreaList(this);
    }
    return orElse();
  }
}

abstract class GetAreaList implements HomeBlocEvent {
  const factory GetAreaList() = _$GetAreaList;
}

/// @nodoc
abstract class $GetCategoryListCopyWith<$Res> {
  factory $GetCategoryListCopyWith(
          GetCategoryList value, $Res Function(GetCategoryList) then) =
      _$GetCategoryListCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetCategoryListCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $GetCategoryListCopyWith<$Res> {
  _$GetCategoryListCopyWithImpl(
      GetCategoryList _value, $Res Function(GetCategoryList) _then)
      : super(_value, (v) => _then(v as GetCategoryList));

  @override
  GetCategoryList get _value => super._value as GetCategoryList;
}

/// @nodoc

class _$GetCategoryList implements GetCategoryList {
  const _$GetCategoryList();

  @override
  String toString() {
    return 'HomeBlocEvent.getCategoryList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is GetCategoryList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return getCategoryList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return getCategoryList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return getCategoryList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return getCategoryList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (getCategoryList != null) {
      return getCategoryList(this);
    }
    return orElse();
  }
}

abstract class GetCategoryList implements HomeBlocEvent {
  const factory GetCategoryList() = _$GetCategoryList;
}

/// @nodoc
abstract class $ChangeFoodListCopyWith<$Res> {
  factory $ChangeFoodListCopyWith(
          ChangeFoodList value, $Res Function(ChangeFoodList) then) =
      _$ChangeFoodListCopyWithImpl<$Res>;
  $Res call({Map<String, dynamic> query, String url});
}

/// @nodoc
class _$ChangeFoodListCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $ChangeFoodListCopyWith<$Res> {
  _$ChangeFoodListCopyWithImpl(
      ChangeFoodList _value, $Res Function(ChangeFoodList) _then)
      : super(_value, (v) => _then(v as ChangeFoodList));

  @override
  ChangeFoodList get _value => super._value as ChangeFoodList;

  @override
  $Res call({
    Object? query = freezed,
    Object? url = freezed,
  }) {
    return _then(ChangeFoodList(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeFoodList implements ChangeFoodList {
  const _$ChangeFoodList({required this.query, required this.url});

  @override
  final Map<String, dynamic> query;
  @override
  final String url;

  @override
  String toString() {
    return 'HomeBlocEvent.changeFoodList(query: $query, url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeFoodList &&
            const DeepCollectionEquality().equals(other.query, query) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query), url);

  @JsonKey(ignore: true)
  @override
  $ChangeFoodListCopyWith<ChangeFoodList> get copyWith =>
      _$ChangeFoodListCopyWithImpl<ChangeFoodList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return changeFoodList(query, url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return changeFoodList?.call(query, url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (changeFoodList != null) {
      return changeFoodList(query, url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return changeFoodList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return changeFoodList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (changeFoodList != null) {
      return changeFoodList(this);
    }
    return orElse();
  }
}

abstract class ChangeFoodList implements HomeBlocEvent {
  const factory ChangeFoodList(
      {required Map<String, dynamic> query,
      required String url}) = _$ChangeFoodList;

  Map<String, dynamic> get query;
  String get url;
  @JsonKey(ignore: true)
  $ChangeFoodListCopyWith<ChangeFoodList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeAreaCopyWith<$Res> {
  factory $ChangeAreaCopyWith(
          ChangeArea value, $Res Function(ChangeArea) then) =
      _$ChangeAreaCopyWithImpl<$Res>;
  $Res call({String dropDownString});
}

/// @nodoc
class _$ChangeAreaCopyWithImpl<$Res> extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $ChangeAreaCopyWith<$Res> {
  _$ChangeAreaCopyWithImpl(ChangeArea _value, $Res Function(ChangeArea) _then)
      : super(_value, (v) => _then(v as ChangeArea));

  @override
  ChangeArea get _value => super._value as ChangeArea;

  @override
  $Res call({
    Object? dropDownString = freezed,
  }) {
    return _then(ChangeArea(
      dropDownString: dropDownString == freezed
          ? _value.dropDownString
          : dropDownString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeArea implements ChangeArea {
  const _$ChangeArea({required this.dropDownString});

  @override
  final String dropDownString;

  @override
  String toString() {
    return 'HomeBlocEvent.changArea(dropDownString: $dropDownString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeArea &&
            (identical(other.dropDownString, dropDownString) ||
                other.dropDownString == dropDownString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dropDownString);

  @JsonKey(ignore: true)
  @override
  $ChangeAreaCopyWith<ChangeArea> get copyWith =>
      _$ChangeAreaCopyWithImpl<ChangeArea>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return changArea(dropDownString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return changArea?.call(dropDownString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (changArea != null) {
      return changArea(dropDownString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return changArea(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return changArea?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (changArea != null) {
      return changArea(this);
    }
    return orElse();
  }
}

abstract class ChangeArea implements HomeBlocEvent {
  const factory ChangeArea({required String dropDownString}) = _$ChangeArea;

  String get dropDownString;
  @JsonKey(ignore: true)
  $ChangeAreaCopyWith<ChangeArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeCategoryCopyWith<$Res> {
  factory $ChangeCategoryCopyWith(
          ChangeCategory value, $Res Function(ChangeCategory) then) =
      _$ChangeCategoryCopyWithImpl<$Res>;
  $Res call({String categoryName, int index});
}

/// @nodoc
class _$ChangeCategoryCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $ChangeCategoryCopyWith<$Res> {
  _$ChangeCategoryCopyWithImpl(
      ChangeCategory _value, $Res Function(ChangeCategory) _then)
      : super(_value, (v) => _then(v as ChangeCategory));

  @override
  ChangeCategory get _value => super._value as ChangeCategory;

  @override
  $Res call({
    Object? categoryName = freezed,
    Object? index = freezed,
  }) {
    return _then(ChangeCategory(
      categoryName: categoryName == freezed
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeCategory implements ChangeCategory {
  const _$ChangeCategory({required this.categoryName, required this.index});

  @override
  final String categoryName;
  @override
  final int index;

  @override
  String toString() {
    return 'HomeBlocEvent.changeCategory(categoryName: $categoryName, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeCategory &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryName, index);

  @JsonKey(ignore: true)
  @override
  $ChangeCategoryCopyWith<ChangeCategory> get copyWith =>
      _$ChangeCategoryCopyWithImpl<ChangeCategory>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return changeCategory(categoryName, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return changeCategory?.call(categoryName, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(categoryName, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return changeCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return changeCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (changeCategory != null) {
      return changeCategory(this);
    }
    return orElse();
  }
}

abstract class ChangeCategory implements HomeBlocEvent {
  const factory ChangeCategory(
      {required String categoryName, required int index}) = _$ChangeCategory;

  String get categoryName;
  int get index;
  @JsonKey(ignore: true)
  $ChangeCategoryCopyWith<ChangeCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchMealCopyWith<$Res> {
  factory $SearchMealCopyWith(
          SearchMeal value, $Res Function(SearchMeal) then) =
      _$SearchMealCopyWithImpl<$Res>;
  $Res call({String searchText});
}

/// @nodoc
class _$SearchMealCopyWithImpl<$Res> extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $SearchMealCopyWith<$Res> {
  _$SearchMealCopyWithImpl(SearchMeal _value, $Res Function(SearchMeal) _then)
      : super(_value, (v) => _then(v as SearchMeal));

  @override
  SearchMeal get _value => super._value as SearchMeal;

  @override
  $Res call({
    Object? searchText = freezed,
  }) {
    return _then(SearchMeal(
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchMeal implements SearchMeal {
  const _$SearchMeal({required this.searchText});

  @override
  final String searchText;

  @override
  String toString() {
    return 'HomeBlocEvent.searchMeal(searchText: $searchText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchMeal &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  $SearchMealCopyWith<SearchMeal> get copyWith =>
      _$SearchMealCopyWithImpl<SearchMeal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return searchMeal(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return searchMeal?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (searchMeal != null) {
      return searchMeal(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return searchMeal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return searchMeal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (searchMeal != null) {
      return searchMeal(this);
    }
    return orElse();
  }
}

abstract class SearchMeal implements HomeBlocEvent {
  const factory SearchMeal({required String searchText}) = _$SearchMeal;

  String get searchText;
  @JsonKey(ignore: true)
  $SearchMealCopyWith<SearchMeal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestMealDetailCopyWith<$Res> {
  factory $RequestMealDetailCopyWith(
          RequestMealDetail value, $Res Function(RequestMealDetail) then) =
      _$RequestMealDetailCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$RequestMealDetailCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $RequestMealDetailCopyWith<$Res> {
  _$RequestMealDetailCopyWithImpl(
      RequestMealDetail _value, $Res Function(RequestMealDetail) _then)
      : super(_value, (v) => _then(v as RequestMealDetail));

  @override
  RequestMealDetail get _value => super._value as RequestMealDetail;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(RequestMealDetail(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequestMealDetail implements RequestMealDetail {
  const _$RequestMealDetail({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'HomeBlocEvent.requestMealDetail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RequestMealDetail &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  $RequestMealDetailCopyWith<RequestMealDetail> get copyWith =>
      _$RequestMealDetailCopyWithImpl<RequestMealDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return requestMealDetail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return requestMealDetail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (requestMealDetail != null) {
      return requestMealDetail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return requestMealDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return requestMealDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (requestMealDetail != null) {
      return requestMealDetail(this);
    }
    return orElse();
  }
}

abstract class RequestMealDetail implements HomeBlocEvent {
  const factory RequestMealDetail({required String id}) = _$RequestMealDetail;

  String get id;
  @JsonKey(ignore: true)
  $RequestMealDetailCopyWith<RequestMealDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddExpansionTileValueCopyWith<$Res> {
  factory $AddExpansionTileValueCopyWith(AddExpansionTileValue value,
          $Res Function(AddExpansionTileValue) then) =
      _$AddExpansionTileValueCopyWithImpl<$Res>;
  $Res call({bool value});
}

/// @nodoc
class _$AddExpansionTileValueCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res>
    implements $AddExpansionTileValueCopyWith<$Res> {
  _$AddExpansionTileValueCopyWithImpl(
      AddExpansionTileValue _value, $Res Function(AddExpansionTileValue) _then)
      : super(_value, (v) => _then(v as AddExpansionTileValue));

  @override
  AddExpansionTileValue get _value => super._value as AddExpansionTileValue;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(AddExpansionTileValue(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AddExpansionTileValue implements AddExpansionTileValue {
  const _$AddExpansionTileValue({required this.value});

  @override
  final bool value;

  @override
  String toString() {
    return 'HomeBlocEvent.addExpansionTileValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddExpansionTileValue &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $AddExpansionTileValueCopyWith<AddExpansionTileValue> get copyWith =>
      _$AddExpansionTileValueCopyWithImpl<AddExpansionTileValue>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAreaList,
    required TResult Function() getCategoryList,
    required TResult Function(Map<String, dynamic> query, String url)
        changeFoodList,
    required TResult Function(String dropDownString) changArea,
    required TResult Function(String categoryName, int index) changeCategory,
    required TResult Function(String searchText) searchMeal,
    required TResult Function(String id) requestMealDetail,
    required TResult Function(bool value) addExpansionTileValue,
  }) {
    return addExpansionTileValue(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
  }) {
    return addExpansionTileValue?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAreaList,
    TResult Function()? getCategoryList,
    TResult Function(Map<String, dynamic> query, String url)? changeFoodList,
    TResult Function(String dropDownString)? changArea,
    TResult Function(String categoryName, int index)? changeCategory,
    TResult Function(String searchText)? searchMeal,
    TResult Function(String id)? requestMealDetail,
    TResult Function(bool value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (addExpansionTileValue != null) {
      return addExpansionTileValue(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAreaList value) getAreaList,
    required TResult Function(GetCategoryList value) getCategoryList,
    required TResult Function(ChangeFoodList value) changeFoodList,
    required TResult Function(ChangeArea value) changArea,
    required TResult Function(ChangeCategory value) changeCategory,
    required TResult Function(SearchMeal value) searchMeal,
    required TResult Function(RequestMealDetail value) requestMealDetail,
    required TResult Function(AddExpansionTileValue value)
        addExpansionTileValue,
  }) {
    return addExpansionTileValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
  }) {
    return addExpansionTileValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAreaList value)? getAreaList,
    TResult Function(GetCategoryList value)? getCategoryList,
    TResult Function(ChangeFoodList value)? changeFoodList,
    TResult Function(ChangeArea value)? changArea,
    TResult Function(ChangeCategory value)? changeCategory,
    TResult Function(SearchMeal value)? searchMeal,
    TResult Function(RequestMealDetail value)? requestMealDetail,
    TResult Function(AddExpansionTileValue value)? addExpansionTileValue,
    required TResult orElse(),
  }) {
    if (addExpansionTileValue != null) {
      return addExpansionTileValue(this);
    }
    return orElse();
  }
}

abstract class AddExpansionTileValue implements HomeBlocEvent {
  const factory AddExpansionTileValue({required bool value}) =
      _$AddExpansionTileValue;

  bool get value;
  @JsonKey(ignore: true)
  $AddExpansionTileValueCopyWith<AddExpansionTileValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeBlocStateTearOff {
  const _$HomeBlocStateTearOff();

  _HomeBlocState call(
      {Future<AreaList>? areaList,
      Future<CategoryList>? categoryList,
      FoodListBySomething? foodList,
      MealDetail? mealDetail,
      required bool isLoading,
      required bool hideLoading,
      String? dropDownAreaValue,
      int? categoryIndex,
      String? searchText,
      required bool isExpand,
      required String foodListType}) {
    return _HomeBlocState(
      areaList: areaList,
      categoryList: categoryList,
      foodList: foodList,
      mealDetail: mealDetail,
      isLoading: isLoading,
      hideLoading: hideLoading,
      dropDownAreaValue: dropDownAreaValue,
      categoryIndex: categoryIndex,
      searchText: searchText,
      isExpand: isExpand,
      foodListType: foodListType,
    );
  }
}

/// @nodoc
const $HomeBlocState = _$HomeBlocStateTearOff();

/// @nodoc
mixin _$HomeBlocState {
  Future<AreaList>? get areaList => throw _privateConstructorUsedError;
  Future<CategoryList>? get categoryList => throw _privateConstructorUsedError;
  FoodListBySomething? get foodList => throw _privateConstructorUsedError;
  MealDetail? get mealDetail => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hideLoading => throw _privateConstructorUsedError;
  String? get dropDownAreaValue => throw _privateConstructorUsedError;
  int? get categoryIndex => throw _privateConstructorUsedError;
  String? get searchText => throw _privateConstructorUsedError;
  bool get isExpand => throw _privateConstructorUsedError;
  String get foodListType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBlocStateCopyWith<HomeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocStateCopyWith<$Res> {
  factory $HomeBlocStateCopyWith(
          HomeBlocState value, $Res Function(HomeBlocState) then) =
      _$HomeBlocStateCopyWithImpl<$Res>;
  $Res call(
      {Future<AreaList>? areaList,
      Future<CategoryList>? categoryList,
      FoodListBySomething? foodList,
      MealDetail? mealDetail,
      bool isLoading,
      bool hideLoading,
      String? dropDownAreaValue,
      int? categoryIndex,
      String? searchText,
      bool isExpand,
      String foodListType});
}

/// @nodoc
class _$HomeBlocStateCopyWithImpl<$Res>
    implements $HomeBlocStateCopyWith<$Res> {
  _$HomeBlocStateCopyWithImpl(this._value, this._then);

  final HomeBlocState _value;
  // ignore: unused_field
  final $Res Function(HomeBlocState) _then;

  @override
  $Res call({
    Object? areaList = freezed,
    Object? categoryList = freezed,
    Object? foodList = freezed,
    Object? mealDetail = freezed,
    Object? isLoading = freezed,
    Object? hideLoading = freezed,
    Object? dropDownAreaValue = freezed,
    Object? categoryIndex = freezed,
    Object? searchText = freezed,
    Object? isExpand = freezed,
    Object? foodListType = freezed,
  }) {
    return _then(_value.copyWith(
      areaList: areaList == freezed
          ? _value.areaList
          : areaList // ignore: cast_nullable_to_non_nullable
              as Future<AreaList>?,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as Future<CategoryList>?,
      foodList: foodList == freezed
          ? _value.foodList
          : foodList // ignore: cast_nullable_to_non_nullable
              as FoodListBySomething?,
      mealDetail: mealDetail == freezed
          ? _value.mealDetail
          : mealDetail // ignore: cast_nullable_to_non_nullable
              as MealDetail?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLoading: hideLoading == freezed
          ? _value.hideLoading
          : hideLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dropDownAreaValue: dropDownAreaValue == freezed
          ? _value.dropDownAreaValue
          : dropDownAreaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIndex: categoryIndex == freezed
          ? _value.categoryIndex
          : categoryIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpand: isExpand == freezed
          ? _value.isExpand
          : isExpand // ignore: cast_nullable_to_non_nullable
              as bool,
      foodListType: foodListType == freezed
          ? _value.foodListType
          : foodListType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeBlocStateCopyWith<$Res>
    implements $HomeBlocStateCopyWith<$Res> {
  factory _$HomeBlocStateCopyWith(
          _HomeBlocState value, $Res Function(_HomeBlocState) then) =
      __$HomeBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Future<AreaList>? areaList,
      Future<CategoryList>? categoryList,
      FoodListBySomething? foodList,
      MealDetail? mealDetail,
      bool isLoading,
      bool hideLoading,
      String? dropDownAreaValue,
      int? categoryIndex,
      String? searchText,
      bool isExpand,
      String foodListType});
}

/// @nodoc
class __$HomeBlocStateCopyWithImpl<$Res>
    extends _$HomeBlocStateCopyWithImpl<$Res>
    implements _$HomeBlocStateCopyWith<$Res> {
  __$HomeBlocStateCopyWithImpl(
      _HomeBlocState _value, $Res Function(_HomeBlocState) _then)
      : super(_value, (v) => _then(v as _HomeBlocState));

  @override
  _HomeBlocState get _value => super._value as _HomeBlocState;

  @override
  $Res call({
    Object? areaList = freezed,
    Object? categoryList = freezed,
    Object? foodList = freezed,
    Object? mealDetail = freezed,
    Object? isLoading = freezed,
    Object? hideLoading = freezed,
    Object? dropDownAreaValue = freezed,
    Object? categoryIndex = freezed,
    Object? searchText = freezed,
    Object? isExpand = freezed,
    Object? foodListType = freezed,
  }) {
    return _then(_HomeBlocState(
      areaList: areaList == freezed
          ? _value.areaList
          : areaList // ignore: cast_nullable_to_non_nullable
              as Future<AreaList>?,
      categoryList: categoryList == freezed
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as Future<CategoryList>?,
      foodList: foodList == freezed
          ? _value.foodList
          : foodList // ignore: cast_nullable_to_non_nullable
              as FoodListBySomething?,
      mealDetail: mealDetail == freezed
          ? _value.mealDetail
          : mealDetail // ignore: cast_nullable_to_non_nullable
              as MealDetail?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hideLoading: hideLoading == freezed
          ? _value.hideLoading
          : hideLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      dropDownAreaValue: dropDownAreaValue == freezed
          ? _value.dropDownAreaValue
          : dropDownAreaValue // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIndex: categoryIndex == freezed
          ? _value.categoryIndex
          : categoryIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      searchText: searchText == freezed
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String?,
      isExpand: isExpand == freezed
          ? _value.isExpand
          : isExpand // ignore: cast_nullable_to_non_nullable
              as bool,
      foodListType: foodListType == freezed
          ? _value.foodListType
          : foodListType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeBlocState implements _HomeBlocState {
  const _$_HomeBlocState(
      {this.areaList,
      this.categoryList,
      this.foodList,
      this.mealDetail,
      required this.isLoading,
      required this.hideLoading,
      this.dropDownAreaValue,
      this.categoryIndex,
      this.searchText,
      required this.isExpand,
      required this.foodListType});

  @override
  final Future<AreaList>? areaList;
  @override
  final Future<CategoryList>? categoryList;
  @override
  final FoodListBySomething? foodList;
  @override
  final MealDetail? mealDetail;
  @override
  final bool isLoading;
  @override
  final bool hideLoading;
  @override
  final String? dropDownAreaValue;
  @override
  final int? categoryIndex;
  @override
  final String? searchText;
  @override
  final bool isExpand;
  @override
  final String foodListType;

  @override
  String toString() {
    return 'HomeBlocState(areaList: $areaList, categoryList: $categoryList, foodList: $foodList, mealDetail: $mealDetail, isLoading: $isLoading, hideLoading: $hideLoading, dropDownAreaValue: $dropDownAreaValue, categoryIndex: $categoryIndex, searchText: $searchText, isExpand: $isExpand, foodListType: $foodListType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeBlocState &&
            (identical(other.areaList, areaList) ||
                other.areaList == areaList) &&
            (identical(other.categoryList, categoryList) ||
                other.categoryList == categoryList) &&
            (identical(other.foodList, foodList) ||
                other.foodList == foodList) &&
            (identical(other.mealDetail, mealDetail) ||
                other.mealDetail == mealDetail) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hideLoading, hideLoading) ||
                other.hideLoading == hideLoading) &&
            (identical(other.dropDownAreaValue, dropDownAreaValue) ||
                other.dropDownAreaValue == dropDownAreaValue) &&
            (identical(other.categoryIndex, categoryIndex) ||
                other.categoryIndex == categoryIndex) &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText) &&
            (identical(other.isExpand, isExpand) ||
                other.isExpand == isExpand) &&
            (identical(other.foodListType, foodListType) ||
                other.foodListType == foodListType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      areaList,
      categoryList,
      foodList,
      mealDetail,
      isLoading,
      hideLoading,
      dropDownAreaValue,
      categoryIndex,
      searchText,
      isExpand,
      foodListType);

  @JsonKey(ignore: true)
  @override
  _$HomeBlocStateCopyWith<_HomeBlocState> get copyWith =>
      __$HomeBlocStateCopyWithImpl<_HomeBlocState>(this, _$identity);
}

abstract class _HomeBlocState implements HomeBlocState {
  const factory _HomeBlocState(
      {Future<AreaList>? areaList,
      Future<CategoryList>? categoryList,
      FoodListBySomething? foodList,
      MealDetail? mealDetail,
      required bool isLoading,
      required bool hideLoading,
      String? dropDownAreaValue,
      int? categoryIndex,
      String? searchText,
      required bool isExpand,
      required String foodListType}) = _$_HomeBlocState;

  @override
  Future<AreaList>? get areaList;
  @override
  Future<CategoryList>? get categoryList;
  @override
  FoodListBySomething? get foodList;
  @override
  MealDetail? get mealDetail;
  @override
  bool get isLoading;
  @override
  bool get hideLoading;
  @override
  String? get dropDownAreaValue;
  @override
  int? get categoryIndex;
  @override
  String? get searchText;
  @override
  bool get isExpand;
  @override
  String get foodListType;
  @override
  @JsonKey(ignore: true)
  _$HomeBlocStateCopyWith<_HomeBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
