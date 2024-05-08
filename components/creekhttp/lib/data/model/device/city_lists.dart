/// code : 0
/// data : [{"address":"","displayName":"","ianaTimeZone":"","latitude":0,"longitude":0}]
/// message : ""

class CityLists {
  CityLists({
      this.code, 
      this.data, 
      this.message,});

  CityLists.fromJson(dynamic json) {
    code = json['code'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
    message = json['message'];
  }
  num? code;
  List<Data>? data;
  String? message;
CityLists copyWith({  num? code,
  List<Data>? data,
  String? message,
}) => CityLists(  code: code ?? this.code,
  data: data ?? this.data,
  message: message ?? this.message,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    map['message'] = message;
    return map;
  }

}

/// address : ""
/// displayName : ""
/// ianaTimeZone : ""
/// latitude : 0
/// longitude : 0

class Data {
  Data({
      this.address, 
      this.displayName, 
      this.ianaTimeZone, 
      this.latitude, 
      this.longitude,});

  Data.fromJson(dynamic json) {
    address = json['address'];
    displayName = json['displayName'];
    ianaTimeZone = json['ianaTimeZone'];
    latitude = json['latitude'];
    longitude = json['longitude'];
  }
  String? address;
  String? displayName;
  String? ianaTimeZone;
  num? latitude;
  num? longitude;
Data copyWith({  String? address,
  String? displayName,
  String? ianaTimeZone,
  num? latitude,
  num? longitude,
}) => Data(  address: address ?? this.address,
  displayName: displayName ?? this.displayName,
  ianaTimeZone: ianaTimeZone ?? this.ianaTimeZone,
  latitude: latitude ?? this.latitude,
  longitude: longitude ?? this.longitude,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['displayName'] = displayName;
    map['ianaTimeZone'] = ianaTimeZone;
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    return map;
  }

}