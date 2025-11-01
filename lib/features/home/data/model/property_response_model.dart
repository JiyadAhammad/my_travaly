class PropertyResponseModel {
  PropertyResponseModel({
    this.status,
    this.message,
    this.responseCode,
    this.data,
  });
  PropertyResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'] as bool;
    message = json['message'] as String;
    responseCode = json['responseCode'] as int;
    if (json['data'] != null) {
      data = <PropertyList>[];
      for (final Map<String, dynamic> v
          in (json['data'] as List<Map<String, dynamic>>)) {
        data!.add(PropertyList.fromJson(v));
      }
    }
  }
  bool? status;
  String? message;
  int? responseCode;
  List<PropertyList>? data;
}

class PropertyList {
  PropertyList({
    this.propertyName,
    this.propertyStar,
    this.propertyImage,
    this.propertyCode,
    this.propertyType,
    this.propertyPoliciesAndAmmenities,
    this.markedPrice,
    this.staticPrice,
    this.googleReview,
    this.propertyUrl,
    this.propertyAddress,
  });

  PropertyList.fromJson(Map<String, dynamic> json) {
    propertyName = json['propertyName'] as String;
    propertyStar = json['propertyStar'] as int;
    propertyImage = json['propertyImage'] as String;
    propertyCode = json['propertyCode'] as String;
    propertyType = json['propertyType'] as String;
    propertyPoliciesAndAmmenities =
        json['propertyPoliciesAndAmmenities'] != null
        ? PropertyPoliciesAndAmmenities.fromJson(
            json['propertyPoliciesAndAmmenities'] as Map<String, dynamic>,
          )
        : null;
    markedPrice = json['markedPrice'] != null
        ? MarkedPrice.fromJson(json['markedPrice'] as Map<String, dynamic>)
        : null;
    staticPrice = json['staticPrice'] != null
        ? StaticPrice.fromJson(json['staticPrice'] as Map<String, dynamic>)
        : null;
    googleReview = json['googleReview'] != null
        ? GoogleReview.fromJson(json['googleReview'] as Map<String, dynamic>)
        : null;
    propertyUrl = json['propertyUrl'] as String;
    propertyAddress = json['propertyAddress'] != null
        ? PropertyAddress.fromJson(
            json['propertyAddress'] as Map<String, dynamic>,
          )
        : null;
  }
  String? propertyName;
  int? propertyStar;
  String? propertyImage;
  String? propertyCode;
  String? propertyType;
  PropertyPoliciesAndAmmenities? propertyPoliciesAndAmmenities;
  MarkedPrice? markedPrice;
  StaticPrice? staticPrice;
  GoogleReview? googleReview;
  String? propertyUrl;
  PropertyAddress? propertyAddress;
}

class PropertyPoliciesAndAmmenities {
  PropertyPoliciesAndAmmenities({this.present, this.data});

  PropertyPoliciesAndAmmenities.fromJson(Map<String, dynamic> json) {
    present = json['present'] as bool;
    data = json['data'] != null
        ? PropertyPoliciesAndAmmenitiesData.fromJson(
            json['data'] as Map<String, dynamic>,
          )
        : null;
  }
  bool? present;
  PropertyPoliciesAndAmmenitiesData? data;
}

class PropertyPoliciesAndAmmenitiesData {
  PropertyPoliciesAndAmmenitiesData({
    this.cancelPolicy,
    this.refundPolicy,
    this.childPolicy,
    this.damagePolicy,
    this.propertyRestriction,
    this.petsAllowed,
    this.coupleFriendly,
    this.suitableForChildren,
    this.bachularsAllowed,
    this.freeWifi,
    this.freeCancellation,
    this.payAtHotel,
    this.payNow,
    this.lastUpdatedOn,
  });

  PropertyPoliciesAndAmmenitiesData.fromJson(Map<String, dynamic> json) {
    cancelPolicy = json['cancelPolicy'] as String;
    refundPolicy = json['refundPolicy'] as String;
    childPolicy = json['childPolicy'] as String;
    damagePolicy = json['damagePolicy'] as String;
    propertyRestriction = json['propertyRestriction'] as String;
    petsAllowed = json['petsAllowed'] as bool;
    coupleFriendly = json['coupleFriendly'] as bool;
    suitableForChildren = json['suitableForChildren'] as bool;
    bachularsAllowed = json['bachularsAllowed'] as bool;
    freeWifi = json['freeWifi'] as bool;
    freeCancellation = json['freeCancellation'] as bool;
    payAtHotel = json['payAtHotel'] as bool;
    payNow = json['payNow'] as bool;
    lastUpdatedOn = json['lastUpdatedOn'] as String;
  }
  String? cancelPolicy;
  String? refundPolicy;
  String? childPolicy;
  String? damagePolicy;
  String? propertyRestriction;
  bool? petsAllowed;
  bool? coupleFriendly;
  bool? suitableForChildren;
  bool? bachularsAllowed;
  bool? freeWifi;
  bool? freeCancellation;
  bool? payAtHotel;
  bool? payNow;
  String? lastUpdatedOn;
}

class MarkedPrice {
  MarkedPrice({
    this.amount,
    this.displayAmount,
    this.currencyAmount,
    this.currencySymbol,
  });

  MarkedPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'] as double;
    displayAmount = json['displayAmount'] as String;
    currencyAmount = json['currencyAmount'] as String;
    currencySymbol = json['currencySymbol'] as String;
  }
  double? amount;
  String? displayAmount;
  String? currencyAmount;
  String? currencySymbol;
}

class StaticPrice {
  StaticPrice({
    this.amount,
    this.displayAmount,
    this.currencyAmount,
    this.currencySymbol,
  });

  StaticPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'] as int;
    displayAmount = json['displayAmount'] as String;
    currencyAmount = json['currencyAmount'] as String;
    currencySymbol = json['currencySymbol'] as String;
  }
  int? amount;
  String? displayAmount;
  String? currencyAmount;
  String? currencySymbol;
}

class GoogleReview {
  GoogleReview({this.reviewPresent, this.data});

  GoogleReview.fromJson(Map<String, dynamic> json) {
    reviewPresent = json['reviewPresent'] as bool;
    data = json['data'] != null
        ? Data.fromJson(json['data'] as Map<String, dynamic>)
        : null;
  }
  bool? reviewPresent;
  Data? data;
}

class Data {
  Data({this.overallRating, this.totalUserRating, this.withoutDecimal});

  Data.fromJson(Map<String, dynamic> json) {
    overallRating = json['overallRating'] as double;
    totalUserRating = json['totalUserRating'] as int;
    withoutDecimal = json['withoutDecimal'] as int;
  }
  double? overallRating;
  int? totalUserRating;
  int? withoutDecimal;
}

class PropertyAddress {
  PropertyAddress({
    this.street,
    this.city,
    this.state,
    this.country,
    this.zipcode,
    this.mapAddress,
    this.latitude,
    this.longitude,
  });

  PropertyAddress.fromJson(Map<String, dynamic> json) {
    street = json['street'] as String;
    city = json['city'] as String;
    state = json['state'] as String;
    country = json['country'] as String;
    zipcode = json['zipcode'] as String;
    mapAddress = json['map_address'] as String;
    latitude = json['latitude'] as double;
    longitude = json['longitude'] as double;
  }
  String? street;
  String? city;
  String? state;
  String? country;
  String? zipcode;
  String? mapAddress;
  double? latitude;
  double? longitude;
}
