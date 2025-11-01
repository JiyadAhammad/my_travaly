import 'package:equatable/equatable.dart';

class SearchAutoCompleteResponseEntity extends Equatable {
  const SearchAutoCompleteResponseEntity({
    this.status,
    this.message,
    this.responseCode,
    this.data,
  });
  final bool? status;
  final String? message;
  final int? responseCode;
  final SearchAutoCompleteResponseDataEntity? data;

  @override
  List<Object?> get props => throw UnimplementedError();
}

class SearchAutoCompleteResponseDataEntity extends Equatable {
  const SearchAutoCompleteResponseDataEntity({
    this.present,
    this.totalNumberOfResult,
    this.autoCompleteList,
  });
  final bool? present;
  final int? totalNumberOfResult;
  final AutoCompleteListEntity? autoCompleteList;

  @override
  List<Object?> get props => <Object?>[
    present,
    totalNumberOfResult,
    autoCompleteList,
  ];
}

class AutoCompleteListEntity extends Equatable {
  const AutoCompleteListEntity({
    this.byPropertyName,
    this.byStreet,
    this.byCity,
    this.byState,
    this.byCountry,
  });
  final ByPropertyNameEntity? byPropertyName;
  final ByPropertyNameEntity? byStreet;
  final ByPropertyNameEntity? byCity;
  final ByStateEntity? byState;
  final ByPropertyNameEntity? byCountry;

  @override
  List<Object?> get props => <Object?>[
    byPropertyName,
    byState,
    byStreet,
    byCity,
    byCountry,
  ];
}

class ByPropertyNameEntity extends Equatable {
  const ByPropertyNameEntity({
    this.present,
    this.listOfResult,
    this.numberOfResult,
  });
  final bool? present;
  final List<ListOfResultEntity>? listOfResult;
  final int? numberOfResult;

  @override
  List<Object?> get props => <Object?>[present, listOfResult, numberOfResult];
}

class ByStateEntity extends Equatable {
  const ByStateEntity({this.present, this.listOfResult, this.numberOfResult});
  final bool? present;
  final List<ListOfResultEntity>? listOfResult;
  final int? numberOfResult;

  @override
  List<Object?> get props => <Object?>[present, listOfResult, numberOfResult];
}

class ListOfResultEntity extends Equatable {
  const ListOfResultEntity({
    this.valueToDisplay,
    this.propertyName,
    this.address,
    this.searchArray,
  });
  final String? valueToDisplay;
  final String? propertyName;
  final AddressEntity? address;
  final SearchArrayEntity? searchArray;

  @override
  List<Object?> get props => <Object?>[
    valueToDisplay,
    propertyName,
    address,
    searchArray,
  ];
}

class SearchArrayEntity extends Equatable {
  const SearchArrayEntity({this.type, this.query});
  final String? type;
  final List<String>? query;

  @override
  List<Object?> get props => <Object?>[type, query];
}

class AddressEntity extends Equatable {
  const AddressEntity({this.street, this.city, this.state, this.country});
  final String? street;
  final String? city;
  final String? state;
  final String? country;

  @override
  List<Object?> get props => <Object?>[state, state, city, country];
}
