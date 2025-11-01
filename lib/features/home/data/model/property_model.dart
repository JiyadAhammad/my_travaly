import '../../domain/entities/property_entity.dart';

class PropertyModel extends PropertyEntity {
  const PropertyModel({
    required super.limit,
    required super.entityType,
    required super.filter,
    required super.currency,
  });

  Map<String, dynamic> toJson() => <String, dynamic>{
    'action': 'popularStay',
    'popularStay': <String, Object>{
      'limit': limit,
      'entityType': entityType,
      'filter': <String, Object>{
        'searchType': filter.searchType,
        'searchTypeInfo': <String, String>{
          'country': filter.searchTypeInfo.country,
          'state': filter.searchTypeInfo.state,
          'city': filter.searchTypeInfo.city,
        },
      },
      'currency': currency,
    },
  };
}
