import '../../domain/entities/search_auto_complete_response_entity.dart';

class SearchAutoCompleteResponseModel {
  bool? status;
  String? message;
  int? responseCode;
  SearchAutoCompleteResponseData? data;

  SearchAutoCompleteResponseModel({
    this.status,
    this.message,
    this.responseCode,
    this.data,
  });

  SearchAutoCompleteResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    responseCode = json['responseCode'];
    data = json['data'] != null
        ? SearchAutoCompleteResponseData.fromJson(json['data'])
        : null;
  }
}

class SearchAutoCompleteResponseData {
  bool? present;
  int? totalNumberOfResult;
  AutoCompleteList? autoCompleteList;

  SearchAutoCompleteResponseData({
    this.present,
    this.totalNumberOfResult,
    this.autoCompleteList,
  });

  SearchAutoCompleteResponseData.fromJson(Map<String, dynamic> json) {
    present = json['present'];
    totalNumberOfResult = json['totalNumberOfResult'];
    autoCompleteList = json['autoCompleteList'] != null
        ? AutoCompleteList.fromJson(json['autoCompleteList'])
        : null;
  }
}

class AutoCompleteList {
  ByPropertyName? byPropertyName;
  ByPropertyName? byStreet;
  ByPropertyName? byCity;
  ByState? byState;
  ByPropertyName? byCountry;

  AutoCompleteList({
    this.byPropertyName,
    this.byStreet,
    this.byCity,
    this.byState,
    this.byCountry,
  });

  AutoCompleteList.fromJson(Map<String, dynamic> json) {
    byPropertyName = json['byPropertyName'] != null
        ? ByPropertyName.fromJson(json['byPropertyName'])
        : null;
    byStreet = json['byStreet'] != null
        ? ByPropertyName.fromJson(json['byStreet'])
        : null;
    byCity = json['byCity'] != null
        ? ByPropertyName.fromJson(json['byCity'])
        : null;
    byState = json['byState'] != null
        ? ByState.fromJson(json['byState'])
        : null;
    byCountry = json['byCountry'] != null
        ? ByPropertyName.fromJson(json['byCountry'])
        : null;
  }
}

class ByPropertyName {
  bool? present;
  List<ListOfResult>? listOfResult;
  int? numberOfResult;

  ByPropertyName({this.present, this.listOfResult, this.numberOfResult});

  ByPropertyName.fromJson(Map<String, dynamic> json) {
    present = json['present'];
    if (json['listOfResult'] != null) {
      listOfResult = <ListOfResult>[];
      json['listOfResult'].forEach((v) {
        listOfResult!.add(ListOfResult.fromJson(v));
      });
    }
    numberOfResult = json['numberOfResult'];
  }
}

class ListOfResult {
  String? valueToDisplay;
  String? propertyName;
  Address? address;
  SearchArray? searchArray;

  ListOfResult({
    this.valueToDisplay,
    this.propertyName,
    this.address,
    this.searchArray,
  });

  ListOfResult.fromJson(Map<String, dynamic> json) {
    valueToDisplay = json['valueToDisplay'];
    propertyName = json['propertyName'];
    address = json['address'] != null
        ? Address.fromJson(json['address'])
        : null;
    searchArray = json['searchArray'] != null
        ? SearchArray.fromJson(json['searchArray'])
        : null;
  }
}

class SearchArray {
  String? type;
  List<String>? query;

  SearchArray({this.type, this.query});

  SearchArray.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    query = json['query'].cast<String>();
  }
}

class Address {
  String? street;
  String? city;
  String? state;
  String? country;

  Address({this.street, this.city, this.state, this.country});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
  }
}

class ByState {
  bool? present;
  List<ListOfResult>? listOfResult;
  int? numberOfResult;

  ByState({this.present, this.listOfResult, this.numberOfResult});

  ByState.fromJson(Map<String, dynamic> json) {
    present = json['present'];
    if (json['listOfResult'] != null) {
      listOfResult = <ListOfResult>[];
      json['listOfResult'].forEach((v) {
        listOfResult!.add(ListOfResult.fromJson(v));
      });
    }
    numberOfResult = json['numberOfResult'];
  }
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
      listOfResult: listOfResult?.map((e) => e.toEntity()).toList(),
      numberOfResult: numberOfResult,
    );
  }
}

extension ByStateMapper on ByState {
  ByStateEntity toEntity() {
    return ByStateEntity(
      present: present,
      listOfResult: listOfResult?.map((e) => e.toEntity()).toList(),
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
