/*
    {
        "action":"searchAutoComplete",
        "searchAutoComplete":{       
            "inputText":"india",
            "searchType":[
                "byCity",
                "byState",
                "byCountry",
                "byRandom",
                "byPropertyName" // you can put any searchType from the list
            ],
            "limit":10             
        }
    }
*/

import 'package:equatable/equatable.dart';

class SearchAutoCompleteEntity extends Equatable {
  const SearchAutoCompleteEntity({
    required this.inputText,
    required this.searchType,
    required this.limit,
  });
  final String inputText;
  final List<String> searchType;
  final int limit;

  @override
  List<Object?> get props => <Object?>[inputText, searchType, limit];
}
