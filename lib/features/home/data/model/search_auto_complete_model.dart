import '../../domain/entities/search_auto_complete_entity.dart';

class SearchAutoCompleteModel extends SearchAutoCompleteEntity {
  const SearchAutoCompleteModel({
    required super.inputText,
    required super.searchType,
    required super.limit,
  });
  factory SearchAutoCompleteModel.fromEntity(SearchAutoCompleteEntity entity) {
    return SearchAutoCompleteModel(
      inputText: entity.inputText,
      searchType: entity.searchType,
      limit: entity.limit,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'action': 'searchAutoComplete',
      'searchAutoComplete': <String, Object>{
        'inputText': inputText,
        'searchType': searchType,
        'limit': limit,
      },
    };
  }
}
