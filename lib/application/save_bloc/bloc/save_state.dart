part of 'save_bloc.dart';

@freezed
class SaveState with _$SaveState {
  const factory SaveState({required int pageIndex}) = _SaveState;

  factory SaveState.initial() => const SaveState(
        pageIndex: 0,
      );
}
