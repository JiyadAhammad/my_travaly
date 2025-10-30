class PropertyResponseModel {
  bool? status;
  String? message;
  int? responseCode;
  List<PropertyList>? data;

  PropertyResponseModel({
    this.status,
    this.message,
    this.responseCode,
    this.data,
  });

  PropertyResponseModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    responseCode = json['responseCode'];
    if (json['data'] != null) {
      data = <PropertyList>[];
      json['data'].forEach((v) {
        data!.add(PropertyList.fromJson(v));
      });
    }
  }
}

class PropertyList {
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
    propertyName = json['propertyName'];
    propertyStar = json['propertyStar'];
    propertyImage = json['propertyImage'];
    propertyCode = json['propertyCode'];
    propertyType = json['propertyType'];
    propertyPoliciesAndAmmenities =
        json['propertyPoliciesAndAmmenities'] != null
        ? PropertyPoliciesAndAmmenities.fromJson(
            json['propertyPoliciesAndAmmenities'],
          )
        : null;
    markedPrice = json['markedPrice'] != null
        ? MarkedPrice.fromJson(json['markedPrice'])
        : null;
    staticPrice = json['staticPrice'] != null
        ? StaticPrice.fromJson(json['staticPrice'])
        : null;
    googleReview = json['googleReview'] != null
        ? GoogleReview.fromJson(json['googleReview'])
        : null;
    propertyUrl = json['propertyUrl'];
    propertyAddress = json['propertyAddress'] != null
        ? PropertyAddress.fromJson(json['propertyAddress'])
        : null;
  }
}

class PropertyPoliciesAndAmmenities {
  bool? present;
  PropertyPoliciesAndAmmenitiesData? data;

  PropertyPoliciesAndAmmenities({this.present, this.data});

  PropertyPoliciesAndAmmenities.fromJson(Map<String, dynamic> json) {
    present = json['present'];
    data = json['data'] != null
        ? PropertyPoliciesAndAmmenitiesData.fromJson(json['data'])
        : null;
  }
}

class PropertyPoliciesAndAmmenitiesData {
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
    cancelPolicy = json['cancelPolicy'];
    refundPolicy = json['refundPolicy'];
    childPolicy = json['childPolicy'];
    damagePolicy = json['damagePolicy'];
    propertyRestriction = json['propertyRestriction'];
    petsAllowed = json['petsAllowed'];
    coupleFriendly = json['coupleFriendly'];
    suitableForChildren = json['suitableForChildren'];
    bachularsAllowed = json['bachularsAllowed'];
    freeWifi = json['freeWifi'];
    freeCancellation = json['freeCancellation'];
    payAtHotel = json['payAtHotel'];
    payNow = json['payNow'];
    lastUpdatedOn = json['lastUpdatedOn'];
  }
}

class MarkedPrice {
  double? amount;
  String? displayAmount;
  String? currencyAmount;
  String? currencySymbol;

  MarkedPrice({
    this.amount,
    this.displayAmount,
    this.currencyAmount,
    this.currencySymbol,
  });

  MarkedPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    displayAmount = json['displayAmount'];
    currencyAmount = json['currencyAmount'];
    currencySymbol = json['currencySymbol'];
  }
}

class StaticPrice {
  int? amount;
  String? displayAmount;
  String? currencyAmount;
  String? currencySymbol;

  StaticPrice({
    this.amount,
    this.displayAmount,
    this.currencyAmount,
    this.currencySymbol,
  });

  StaticPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    displayAmount = json['displayAmount'];
    currencyAmount = json['currencyAmount'];
    currencySymbol = json['currencySymbol'];
  }
}

class GoogleReview {
  bool? reviewPresent;
  Data? data;

  GoogleReview({this.reviewPresent, this.data});

  GoogleReview.fromJson(Map<String, dynamic> json) {
    reviewPresent = json['reviewPresent'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

class Data {
  double? overallRating;
  int? totalUserRating;
  int? withoutDecimal;

  Data({this.overallRating, this.totalUserRating, this.withoutDecimal});

  Data.fromJson(Map<String, dynamic> json) {
    overallRating = json['overallRating'];
    totalUserRating = json['totalUserRating'];
    withoutDecimal = json['withoutDecimal'];
  }
}

class PropertyAddress {
  String? street;
  String? city;
  String? state;
  String? country;
  String? zipcode;
  String? mapAddress;
  double? latitude;
  double? longitude;

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
    street = json['street'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zipcode = json['zipcode'];
    mapAddress = json['map_address'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
}
