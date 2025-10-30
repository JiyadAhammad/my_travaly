/*
    {
        "action":"searchAutoComplete",
        "searchAutoComplete":{       
            "inputText":"indi",
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

class SearchAutoCompleteEntity {
  final String inputText;
  final List<String> searchType;
  final int limit;

  SearchAutoCompleteEntity({
    required this.inputText,
    required this.searchType,
    required this.limit,
  });
}
