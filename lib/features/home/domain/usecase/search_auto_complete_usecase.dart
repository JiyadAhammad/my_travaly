import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/search_auto_complete_entity.dart';
import '../entities/search_auto_complete_response_entity.dart';
import '../repository/home_repository.dart';

class SearchAutoCompleteUsecase
    implements
        UseCase<SearchAutoCompleteResponseEntity, SearchAutoCompleteParam> {
  final HomeRepository homeRepository;

  SearchAutoCompleteUsecase(this.homeRepository);

  @override
  Future<Either<AppFailures, SearchAutoCompleteResponseEntity>> call(
    SearchAutoCompleteParam param,
  ) async {
    return await homeRepository.searchAutoComplete(
      searchAutoCompleteEntity: SearchAutoCompleteEntity(
        inputText: param.inputText,
        searchType: param.searchType,
        limit: param.limit,
      ),
    );
  }
}

class SearchAutoCompleteParam {
  final String inputText;
  final List<String> searchType;
  final int limit;

  SearchAutoCompleteParam({
    required this.inputText,
    required this.searchType,
    required this.limit,
  });
}
