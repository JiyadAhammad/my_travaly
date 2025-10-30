class SearchAutoCompleteResponseEntity {
  final bool? status;
  final String? message;
  final int? responseCode;
  final SearchAutoCompleteResponseDataEntity? data;

  SearchAutoCompleteResponseEntity({
    this.status,
    this.message,
    this.responseCode,
    this.data,
  });
}

class SearchAutoCompleteResponseDataEntity {
  final bool? present;
  final int? totalNumberOfResult;
  final AutoCompleteListEntity? autoCompleteList;

  SearchAutoCompleteResponseDataEntity({
    this.present,
    this.totalNumberOfResult,
    this.autoCompleteList,
  });
}

class AutoCompleteListEntity {
  final ByPropertyNameEntity? byPropertyName;
  final ByPropertyNameEntity? byStreet;
  final ByPropertyNameEntity? byCity;
  final ByStateEntity? byState;
  final ByPropertyNameEntity? byCountry;

  AutoCompleteListEntity({
    this.byPropertyName,
    this.byStreet,
    this.byCity,
    this.byState,
    this.byCountry,
  });
}

class ByPropertyNameEntity {
  final bool? present;
  final List<ListOfResultEntity>? listOfResult;
  final int? numberOfResult;

  ByPropertyNameEntity({this.present, this.listOfResult, this.numberOfResult});
}

class ByStateEntity {
  final bool? present;
  final List<ListOfResultEntity>? listOfResult;
  final int? numberOfResult;

  ByStateEntity({this.present, this.listOfResult, this.numberOfResult});
}

class ListOfResultEntity {
  final String? valueToDisplay;
  final String? propertyName;
  final AddressEntity? address;
  final SearchArrayEntity? searchArray;

  ListOfResultEntity({
    this.valueToDisplay,
    this.propertyName,
    this.address,
    this.searchArray,
  });
}

class SearchArrayEntity {
  final String? type;
  final List<String>? query;

  SearchArrayEntity({this.type, this.query});
}

class AddressEntity {
  final String? street;
  final String? city;
  final String? state;
  final String? country;

  AddressEntity({this.street, this.city, this.state, this.country});
}
