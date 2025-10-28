// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _RegisterDevice value)?  registerDevice,TResult Function( _GetDeviceInfo value)?  getDeviceInfo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _RegisterDevice() when registerDevice != null:
return registerDevice(_that);case _GetDeviceInfo() when getDeviceInfo != null:
return getDeviceInfo(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _RegisterDevice value)  registerDevice,required TResult Function( _GetDeviceInfo value)  getDeviceInfo,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _RegisterDevice():
return registerDevice(_that);case _GetDeviceInfo():
return getDeviceInfo(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _RegisterDevice value)?  registerDevice,TResult? Function( _GetDeviceInfo value)?  getDeviceInfo,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _RegisterDevice() when registerDevice != null:
return registerDevice(_that);case _GetDeviceInfo() when getDeviceInfo != null:
return getDeviceInfo(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function( DeviceRegisterParam deviceData)?  registerDevice,TResult Function()?  getDeviceInfo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _RegisterDevice() when registerDevice != null:
return registerDevice(_that.deviceData);case _GetDeviceInfo() when getDeviceInfo != null:
return getDeviceInfo();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function( DeviceRegisterParam deviceData)  registerDevice,required TResult Function()  getDeviceInfo,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _RegisterDevice():
return registerDevice(_that.deviceData);case _GetDeviceInfo():
return getDeviceInfo();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function( DeviceRegisterParam deviceData)?  registerDevice,TResult? Function()?  getDeviceInfo,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _RegisterDevice() when registerDevice != null:
return registerDevice(_that.deviceData);case _GetDeviceInfo() when getDeviceInfo != null:
return getDeviceInfo();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements HomeEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.started()';
}


}




/// @nodoc


class _RegisterDevice implements HomeEvent {
  const _RegisterDevice({required this.deviceData});
  

 final  DeviceRegisterParam deviceData;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterDeviceCopyWith<_RegisterDevice> get copyWith => __$RegisterDeviceCopyWithImpl<_RegisterDevice>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterDevice&&(identical(other.deviceData, deviceData) || other.deviceData == deviceData));
}


@override
int get hashCode => Object.hash(runtimeType,deviceData);

@override
String toString() {
  return 'HomeEvent.registerDevice(deviceData: $deviceData)';
}


}

/// @nodoc
abstract mixin class _$RegisterDeviceCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$RegisterDeviceCopyWith(_RegisterDevice value, $Res Function(_RegisterDevice) _then) = __$RegisterDeviceCopyWithImpl;
@useResult
$Res call({
 DeviceRegisterParam deviceData
});




}
/// @nodoc
class __$RegisterDeviceCopyWithImpl<$Res>
    implements _$RegisterDeviceCopyWith<$Res> {
  __$RegisterDeviceCopyWithImpl(this._self, this._then);

  final _RegisterDevice _self;
  final $Res Function(_RegisterDevice) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? deviceData = null,}) {
  return _then(_RegisterDevice(
deviceData: null == deviceData ? _self.deviceData : deviceData // ignore: cast_nullable_to_non_nullable
as DeviceRegisterParam,
  ));
}


}

/// @nodoc


class _GetDeviceInfo implements HomeEvent {
  const _GetDeviceInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetDeviceInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getDeviceInfo()';
}


}




/// @nodoc
mixin _$HomeState {

 bool get isLoading; bool get isVisitorTokenReceived; String? get visitorToken; bool get isError; String? get errorMessage;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isVisitorTokenReceived, isVisitorTokenReceived) || other.isVisitorTokenReceived == isVisitorTokenReceived)&&(identical(other.visitorToken, visitorToken) || other.visitorToken == visitorToken)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isVisitorTokenReceived,visitorToken,isError,errorMessage);

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, isVisitorTokenReceived: $isVisitorTokenReceived, visitorToken: $visitorToken, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, bool isVisitorTokenReceived, String? visitorToken, bool isError, String? errorMessage
});




}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? isVisitorTokenReceived = null,Object? visitorToken = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isVisitorTokenReceived: null == isVisitorTokenReceived ? _self.isVisitorTokenReceived : isVisitorTokenReceived // ignore: cast_nullable_to_non_nullable
as bool,visitorToken: freezed == visitorToken ? _self.visitorToken : visitorToken // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  bool isVisitorTokenReceived,  String? visitorToken,  bool isError,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.isVisitorTokenReceived,_that.visitorToken,_that.isError,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  bool isVisitorTokenReceived,  String? visitorToken,  bool isError,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
return $default(_that.isLoading,_that.isVisitorTokenReceived,_that.visitorToken,_that.isError,_that.errorMessage);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  bool isVisitorTokenReceived,  String? visitorToken,  bool isError,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.isLoading,_that.isVisitorTokenReceived,_that.visitorToken,_that.isError,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({required this.isLoading, required this.isVisitorTokenReceived, required this.visitorToken, required this.isError, required this.errorMessage});
  

@override final  bool isLoading;
@override final  bool isVisitorTokenReceived;
@override final  String? visitorToken;
@override final  bool isError;
@override final  String? errorMessage;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isVisitorTokenReceived, isVisitorTokenReceived) || other.isVisitorTokenReceived == isVisitorTokenReceived)&&(identical(other.visitorToken, visitorToken) || other.visitorToken == visitorToken)&&(identical(other.isError, isError) || other.isError == isError)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,isLoading,isVisitorTokenReceived,visitorToken,isError,errorMessage);

@override
String toString() {
  return 'HomeState(isLoading: $isLoading, isVisitorTokenReceived: $isVisitorTokenReceived, visitorToken: $visitorToken, isError: $isError, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, bool isVisitorTokenReceived, String? visitorToken, bool isError, String? errorMessage
});




}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? isVisitorTokenReceived = null,Object? visitorToken = freezed,Object? isError = null,Object? errorMessage = freezed,}) {
  return _then(_HomeState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isVisitorTokenReceived: null == isVisitorTokenReceived ? _self.isVisitorTokenReceived : isVisitorTokenReceived // ignore: cast_nullable_to_non_nullable
as bool,visitorToken: freezed == visitorToken ? _self.visitorToken : visitorToken // ignore: cast_nullable_to_non_nullable
as String?,isError: null == isError ? _self.isError : isError // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
