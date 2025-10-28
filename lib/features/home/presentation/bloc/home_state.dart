part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isVisitorTokenReceived,
    required String? visitorToken,
    required bool isError,
    required String? errorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
    isLoading: false,
    isVisitorTokenReceived: false,
    visitorToken: null,
    isError: false,
    errorMessage: null,
  );
}
