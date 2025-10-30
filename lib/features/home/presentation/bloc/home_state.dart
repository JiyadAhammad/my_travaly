part of 'home_bloc.dart';

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isVisitorTokenReceived,
    required String? visitorToken,
    required bool isError,
    required String? errorMessage,

    /// Search AutoComplete states
    required bool isSearchLoading,
    required SearchAutoCompleteResponseEntity? searchResult,
    required bool isSearchError,
    required String? searchErrorMessage,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
    isLoading: false,
    isVisitorTokenReceived: false,
    visitorToken: null,
    isError: false,
    errorMessage: null,

    /// Search AutoComplete states
    isSearchLoading: false,
    searchResult: null,
    isSearchError: false,
    searchErrorMessage: null,
  );
}
