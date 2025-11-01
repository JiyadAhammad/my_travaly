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
                    "state": "kerala",
                    "city":"Jamshedpur"
                }
            },
            "currency":"INR"
        }
    }
*/

import 'package:equatable/equatable.dart';

class PropertyEntity extends Equatable {
  const PropertyEntity({
    required this.limit,
    required this.entityType,
    required this.filter,
    required this.currency,
  });
  final int limit;
  final String entityType;
  final PropertyEntityFilter filter;
  final String currency;

  @override
  List<Object?> get props => <Object?>[limit, entityType, filter, currency];
}

class PropertyEntityFilter extends Equatable {
  const PropertyEntityFilter({
    required this.searchType,
    required this.searchTypeInfo,
  });
  final String searchType;
  final PropertyEntitySearchType searchTypeInfo;

  @override
  List<Object?> get props => <Object?>[searchType, searchTypeInfo];
}

class PropertyEntitySearchType extends Equatable {
  const PropertyEntitySearchType({
    required this.country,
    required this.state,
    required this.city,
  });
  final String country;
  final String state;
  final String city;

  @override
  List<Object?> get props => <Object?>[country, state, city];
}
