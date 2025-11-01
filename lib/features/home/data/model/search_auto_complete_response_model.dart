import '../../domain/entities/search_auto_complete_response_entity.dart';

class SearchAutoCompleteResponseModel {
  SearchAutoCompleteResponseModel({
    this.status,
    this.message,
    this.responseCode,
    this.data,
  });

  SearchAutoCompleteResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] as bool;
    message = json['message'] as String;
    responseCode = json['responseCode'] as int;
    data = json['data'] != null
        ? SearchAutoCompleteResponseData.fromJson(
            json['data'] as Map<String, dynamic>,
          )
        : null;
  }
  bool? status;
  String? message;
  int? responseCode;
  SearchAutoCompleteResponseData? data;
}

class SearchAutoCompleteResponseData {
  SearchAutoCompleteResponseData({
    this.present,
    this.totalNumberOfResult,
    this.autoCompleteList,
  });

  SearchAutoCompleteResponseData.fromJson(Map<String, dynamic> json) {
    present = json['present'] as bool;
    totalNumberOfResult = json['totalNumberOfResult'] as int;
    autoCompleteList = json['autoCompleteList'] != null
        ? AutoCompleteList.fromJson(
            json['autoCompleteList'] as Map<String, dynamic>,
          )
        : null;
  }
  bool? present;
  int? totalNumberOfResult;
  AutoCompleteList? autoCompleteList;
}

class AutoCompleteList {
  AutoCompleteList({
    this.byPropertyName,
    this.byStreet,
    this.byCity,
    this.byState,
    this.byCountry,
  });

  AutoCompleteList.fromJson(Map<String, dynamic> json) {
    byPropertyName = json['byPropertyName'] != null
        ? ByPropertyName.fromJson(
            json['byPropertyName'] as Map<String, dynamic>,
          )
        : null;
    byStreet = json['byStreet'] != null
        ? ByPropertyName.fromJson(json['byStreet'] as Map<String, dynamic>)
        : null;
    byCity = json['byCity'] != null
        ? ByPropertyName.fromJson(json['byCity'] as Map<String, dynamic>)
        : null;
    byState = json['byState'] != null
        ? ByState.fromJson(json['byState'] as Map<String, dynamic>)
        : null;
    byCountry = json['byCountry'] != null
        ? ByPropertyName.fromJson(json['byCountry'] as Map<String, dynamic>)
        : null;
  }
  ByPropertyName? byPropertyName;
  ByPropertyName? byStreet;
  ByPropertyName? byCity;
  ByState? byState;
  ByPropertyName? byCountry;
}

class ByPropertyName {
  ByPropertyName({this.present, this.listOfResult, this.numberOfResult});

  ByPropertyName.fromJson(Map<String, dynamic> json) {
    present = json['present'] as bool;
    if (json['listOfResult'] != null) {
      listOfResult = <ListOfResult>[];
      json['listOfResult'].forEach((Map<String, dynamic> v) {
        listOfResult!.add(ListOfResult.fromJson(v));
      });
    }
    numberOfResult = json['numberOfResult'] as int;
  }
  bool? present;
  List<ListOfResult>? listOfResult;
  int? numberOfResult;
}

class ListOfResult {
  ListOfResult({
    this.valueToDisplay,
    this.propertyName,
    this.address,
    this.searchArray,
  });

  ListOfResult.fromJson(Map<String, dynamic> json) {
    valueToDisplay = json['valueToDisplay'] as String;
    propertyName = json['propertyName'] as String;
    address = json['address'] != null
        ? Address.fromJson(json['address'] as Map<String, dynamic>)
        : null;
    searchArray = json['searchArray'] != null
        ? SearchArray.fromJson(json['searchArray'] as Map<String, dynamic>)
        : null;
  }
  String? valueToDisplay;
  String? propertyName;
  Address? address;
  SearchArray? searchArray;
}

class SearchArray {
  SearchArray({this.type, this.query});

  SearchArray.fromJson(Map<String, dynamic> json) {
    type = json['type'] as String;
    query = json['query'] as List<String>;
  }
  String? type;
  List<String>? query;
}

class Address {
  Address({this.street, this.city, this.state, this.country});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'] as String;
    city = json['city'] as String;
    state = json['state'] as String;
    country = json['country'] as String;
  }
  String? street;
  String? city;
  String? state;
  String? country;
}

class ByState {
  ByState({this.present, this.listOfResult, this.numberOfResult});

  ByState.fromJson(Map<String, dynamic> json) {
    present = json['present'] as bool;
    if (json['listOfResult'] != null) {
      listOfResult = <ListOfResult>[];
      json['listOfResult'].forEach((Map<String, dynamic> v) {
        listOfResult!.add(ListOfResult.fromJson(v));
      });
    }
    numberOfResult = json['numberOfResult'] as int;
  }
  bool? present;
  List<ListOfResult>? listOfResult;
  int? numberOfResult;
}

extension SearchAutoCompleteResponseMapper on SearchAutoCompleteResponseModel {
  SearchAutoCompleteResponseEntity toEntity() {
    return SearchAutoCompleteResponseEntity(
      status: status,
      message: message,
      responseCode: responseCode,
      data: data?.toEntity(),
    );
  }
}

extension SearchAutoCompleteResponseDataMapper
    on SearchAutoCompleteResponseData {
  SearchAutoCompleteResponseDataEntity toEntity() {
    return SearchAutoCompleteResponseDataEntity(
      present: present,
      totalNumberOfResult: totalNumberOfResult,
      autoCompleteList: autoCompleteList?.toEntity(),
    );
  }
}

extension AutoCompleteListMapper on AutoCompleteList {
  AutoCompleteListEntity toEntity() {
    return AutoCompleteListEntity(
      byPropertyName: byPropertyName?.toEntity(),
      byStreet: byStreet?.toEntity(),
      byCity: byCity?.toEntity(),
      byState: byState?.toEntity(),
      byCountry: byCountry?.toEntity(),
    );
  }
}

extension ByPropertyNameMapper on ByPropertyName {
  ByPropertyNameEntity toEntity() {
    return ByPropertyNameEntity(
      present: present,
      listOfResult: listOfResult
          ?.map((ListOfResult e) => e.toEntity())
          .toList(),
      numberOfResult: numberOfResult,
    );
  }
}

extension ByStateMapper on ByState {
  ByStateEntity toEntity() {
    return ByStateEntity(
      present: present,
      listOfResult: listOfResult
          ?.map((ListOfResult e) => e.toEntity())
          .toList(),
      numberOfResult: numberOfResult,
    );
  }
}

extension ListOfResultMapper on ListOfResult {
  ListOfResultEntity toEntity() {
    return ListOfResultEntity(
      valueToDisplay: valueToDisplay,
      propertyName: propertyName,
      address: address?.toEntity(),
      searchArray: searchArray?.toEntity(),
    );
  }
}

extension SearchArrayMapper on SearchArray {
  SearchArrayEntity toEntity() {
    return SearchArrayEntity(type: type, query: query);
  }
}

extension AddressMapper on Address {
  AddressEntity toEntity() {
    return AddressEntity(
      street: street,
      city: city,
      state: state,
      country: country,
    );
  }
}
