// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'save_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SaveEventTearOff {
  const _$SaveEventTearOff();

  ChangeBottomNavigationBar changeBottomNavigationBar({required int value}) {
    return ChangeBottomNavigationBar(
      value: value,
    );
  }

  StartDownload startDownload({required int mealId, required Meal meal}) {
    return StartDownload(
      mealId: mealId,
      meal: meal,
    );
  }
}

/// @nodoc
const $SaveEvent = _$SaveEventTearOff();

/// @nodoc
mixin _$SaveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) changeBottomNavigationBar,
    required TResult Function(int mealId, Meal meal) startDownload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? changeBottomNavigationBar,
    TResult Function(int mealId, Meal meal)? startDownload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? changeBottomNavigationBar,
    TResult Function(int mealId, Meal meal)? startDownload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBar value)
        changeBottomNavigationBar,
    required TResult Function(StartDownload value) startDownload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBar value)?
        changeBottomNavigationBar,
    TResult Function(StartDownload value)? startDownload,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBar value)?
        changeBottomNavigationBar,
    TResult Function(StartDownload value)? startDownload,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveEventCopyWith<$Res> {
  factory $SaveEventCopyWith(SaveEvent value, $Res Function(SaveEvent) then) =
      _$SaveEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SaveEventCopyWithImpl<$Res> implements $SaveEventCopyWith<$Res> {
  _$SaveEventCopyWithImpl(this._value, this._then);

  final SaveEvent _value;
  // ignore: unused_field
  final $Res Function(SaveEvent) _then;
}

/// @nodoc
abstract class $ChangeBottomNavigationBarCopyWith<$Res> {
  factory $ChangeBottomNavigationBarCopyWith(ChangeBottomNavigationBar value,
          $Res Function(ChangeBottomNavigationBar) then) =
      _$ChangeBottomNavigationBarCopyWithImpl<$Res>;
  $Res call({int value});
}

/// @nodoc
class _$ChangeBottomNavigationBarCopyWithImpl<$Res>
    extends _$SaveEventCopyWithImpl<$Res>
    implements $ChangeBottomNavigationBarCopyWith<$Res> {
  _$ChangeBottomNavigationBarCopyWithImpl(ChangeBottomNavigationBar _value,
      $Res Function(ChangeBottomNavigationBar) _then)
      : super(_value, (v) => _then(v as ChangeBottomNavigationBar));

  @override
  ChangeBottomNavigationBar get _value =>
      super._value as ChangeBottomNavigationBar;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(ChangeBottomNavigationBar(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBottomNavigationBar implements ChangeBottomNavigationBar {
  const _$ChangeBottomNavigationBar({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'SaveEvent.changeBottomNavigationBar(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChangeBottomNavigationBar &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  $ChangeBottomNavigationBarCopyWith<ChangeBottomNavigationBar> get copyWith =>
      _$ChangeBottomNavigationBarCopyWithImpl<ChangeBottomNavigationBar>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) changeBottomNavigationBar,
    required TResult Function(int mealId, Meal meal) startDownload,
  }) {
    return changeBottomNavigationBar(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? changeBottomNavigationBar,
    TResult Function(int mealId, Meal meal)? startDownload,
  }) {
    return changeBottomNavigationBar?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? changeBottomNavigationBar,
    TResult Function(int mealId, Meal meal)? startDownload,
    required TResult orElse(),
  }) {
    if (changeBottomNavigationBar != null) {
      return changeBottomNavigationBar(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBar value)
        changeBottomNavigationBar,
    required TResult Function(StartDownload value) startDownload,
  }) {
    return changeBottomNavigationBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBar value)?
        changeBottomNavigationBar,
    TResult Function(StartDownload value)? startDownload,
  }) {
    return changeBottomNavigationBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBar value)?
        changeBottomNavigationBar,
    TResult Function(StartDownload value)? startDownload,
    required TResult orElse(),
  }) {
    if (changeBottomNavigationBar != null) {
      return changeBottomNavigationBar(this);
    }
    return orElse();
  }
}

abstract class ChangeBottomNavigationBar implements SaveEvent {
  const factory ChangeBottomNavigationBar({required int value}) =
      _$ChangeBottomNavigationBar;

  int get value;
  @JsonKey(ignore: true)
  $ChangeBottomNavigationBarCopyWith<ChangeBottomNavigationBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartDownloadCopyWith<$Res> {
  factory $StartDownloadCopyWith(
          StartDownload value, $Res Function(StartDownload) then) =
      _$StartDownloadCopyWithImpl<$Res>;
  $Res call({int mealId, Meal meal});
}

/// @nodoc
class _$StartDownloadCopyWithImpl<$Res> extends _$SaveEventCopyWithImpl<$Res>
    implements $StartDownloadCopyWith<$Res> {
  _$StartDownloadCopyWithImpl(
      StartDownload _value, $Res Function(StartDownload) _then)
      : super(_value, (v) => _then(v as StartDownload));

  @override
  StartDownload get _value => super._value as StartDownload;

  @override
  $Res call({
    Object? mealId = freezed,
    Object? meal = freezed,
  }) {
    return _then(StartDownload(
      mealId: mealId == freezed
          ? _value.mealId
          : mealId // ignore: cast_nullable_to_non_nullable
              as int,
      meal: meal == freezed
          ? _value.meal
          : meal // ignore: cast_nullable_to_non_nullable
              as Meal,
    ));
  }
}

/// @nodoc

class _$StartDownload implements StartDownload {
  const _$StartDownload({required this.mealId, required this.meal});

  @override
  final int mealId;
  @override
  final Meal meal;

  @override
  String toString() {
    return 'SaveEvent.startDownload(mealId: $mealId, meal: $meal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is StartDownload &&
            (identical(other.mealId, mealId) || other.mealId == mealId) &&
            (identical(other.meal, meal) || other.meal == meal));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mealId, meal);

  @JsonKey(ignore: true)
  @override
  $StartDownloadCopyWith<StartDownload> get copyWith =>
      _$StartDownloadCopyWithImpl<StartDownload>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) changeBottomNavigationBar,
    required TResult Function(int mealId, Meal meal) startDownload,
  }) {
    return startDownload(mealId, meal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int value)? changeBottomNavigationBar,
    TResult Function(int mealId, Meal meal)? startDownload,
  }) {
    return startDownload?.call(mealId, meal);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? changeBottomNavigationBar,
    TResult Function(int mealId, Meal meal)? startDownload,
    required TResult orElse(),
  }) {
    if (startDownload != null) {
      return startDownload(mealId, meal);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavigationBar value)
        changeBottomNavigationBar,
    required TResult Function(StartDownload value) startDownload,
  }) {
    return startDownload(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBar value)?
        changeBottomNavigationBar,
    TResult Function(StartDownload value)? startDownload,
  }) {
    return startDownload?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavigationBar value)?
        changeBottomNavigationBar,
    TResult Function(StartDownload value)? startDownload,
    required TResult orElse(),
  }) {
    if (startDownload != null) {
      return startDownload(this);
    }
    return orElse();
  }
}

abstract class StartDownload implements SaveEvent {
  const factory StartDownload({required int mealId, required Meal meal}) =
      _$StartDownload;

  int get mealId;
  Meal get meal;
  @JsonKey(ignore: true)
  $StartDownloadCopyWith<StartDownload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SaveStateTearOff {
  const _$SaveStateTearOff();

  _SaveState call({required int pageIndex}) {
    return _SaveState(
      pageIndex: pageIndex,
    );
  }
}

/// @nodoc
const $SaveState = _$SaveStateTearOff();

/// @nodoc
mixin _$SaveState {
  int get pageIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SaveStateCopyWith<SaveState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SaveStateCopyWith<$Res> {
  factory $SaveStateCopyWith(SaveState value, $Res Function(SaveState) then) =
      _$SaveStateCopyWithImpl<$Res>;
  $Res call({int pageIndex});
}

/// @nodoc
class _$SaveStateCopyWithImpl<$Res> implements $SaveStateCopyWith<$Res> {
  _$SaveStateCopyWithImpl(this._value, this._then);

  final SaveState _value;
  // ignore: unused_field
  final $Res Function(SaveState) _then;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(_value.copyWith(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SaveStateCopyWith<$Res> implements $SaveStateCopyWith<$Res> {
  factory _$SaveStateCopyWith(
          _SaveState value, $Res Function(_SaveState) then) =
      __$SaveStateCopyWithImpl<$Res>;
  @override
  $Res call({int pageIndex});
}

/// @nodoc
class __$SaveStateCopyWithImpl<$Res> extends _$SaveStateCopyWithImpl<$Res>
    implements _$SaveStateCopyWith<$Res> {
  __$SaveStateCopyWithImpl(_SaveState _value, $Res Function(_SaveState) _then)
      : super(_value, (v) => _then(v as _SaveState));

  @override
  _SaveState get _value => super._value as _SaveState;

  @override
  $Res call({
    Object? pageIndex = freezed,
  }) {
    return _then(_SaveState(
      pageIndex: pageIndex == freezed
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SaveState implements _SaveState {
  const _$_SaveState({required this.pageIndex});

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'SaveState(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveState &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  _$SaveStateCopyWith<_SaveState> get copyWith =>
      __$SaveStateCopyWithImpl<_SaveState>(this, _$identity);
}

abstract class _SaveState implements SaveState {
  const factory _SaveState({required int pageIndex}) = _$_SaveState;

  @override
  int get pageIndex;
  @override
  @JsonKey(ignore: true)
  _$SaveStateCopyWith<_SaveState> get copyWith =>
      throw _privateConstructorUsedError;
}
