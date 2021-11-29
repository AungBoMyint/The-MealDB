part of 'save_bloc.dart';

@freezed
class SaveEvent with _$SaveEvent {
  const factory SaveEvent.changeBottomNavigationBar({
    required int value,
  }) = ChangeBottomNavigationBar;

  const factory SaveEvent.startDownload({
    required int mealId,
    required Meal meal,
  }) = StartDownload;
}
