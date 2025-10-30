/*
    {
        "action":"popularStay",
        "popularStay":{
            "limit":10, //maximum 10
            "entityType":"Any", //hotel, resort, Home Stay, Camp_sites/tent, Any
            "filter":{
                "searchType":"byCity", //byCity, byState, byCountry, byRandom,
                "searchTypeInfo":{
                    "country":"India",
                    "state": "Jharkhand",
                    "city":"Jamshedpur"
                }
            },
            "currency":"INR"
        }
    }
*/

class PropertyEntity {
  final int limit;
  final String entityType;
  final PropertyEntityFilter filter;
  final String currency;

  const PropertyEntity({
    required this.limit,
    required this.entityType,
    required this.filter,
    required this.currency,
  });
}

class PropertyEntityFilter {
  final String searchType;
  final PropertyEntitySearchType searchTypeInfo;

  const PropertyEntityFilter({
    required this.searchType,
    required this.searchTypeInfo,
  });
}

class PropertyEntitySearchType {
  final String country;
  final String state;
  final String city;

  const PropertyEntitySearchType({
    required this.country,
    required this.state,
    required this.city,
  });
}
