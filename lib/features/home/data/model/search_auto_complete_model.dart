import '../../domain/entities/search_auto_complete_entity.dart';

class SearchAutoCompleteModel extends SearchAutoCompleteEntity {
  SearchAutoCompleteModel({
    required super.inputText,
    required super.searchType,
    required super.limit,
  });

  Map<String, dynamic> toJson() {
    return {
      "action": "searchAutoComplete",
      "searchAutoComplete": {
        "inputText": inputText,
        "searchType": searchType,
        "limit": limit,
      },
    };
  }

  factory SearchAutoCompleteModel.fromEntity(SearchAutoCompleteEntity entity) {
    return SearchAutoCompleteModel(
      inputText: entity.inputText,
      searchType: entity.searchType,
      limit: entity.limit,
    );
  }
}
