class PostRegisterDeviceAuthResp {
  String? status;
  String? message;
  Data? data;

  PostRegisterDeviceAuthResp({this.status, this.message, this.data});

  PostRegisterDeviceAuthResp.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (status != null) {
      data['status'] = status;
    }
    if (message != null) {
      data['message'] = message;
    }
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    return data;
  }
}

class Data {
  String? username;
  String? email;
  String? name;
  int? userType;
  int? loginRetryLimit;
  String? sId;
  String? createdAt;
  String? updatedAt;
  bool? isDeleted;
  bool? isActive;
  int? sV;
  String? token;

  Data(
      {this.username,
      this.email,
      this.name,
      this.userType,
      this.loginRetryLimit,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.isDeleted,
      this.isActive,
      this.sV,
      this.token});

  Data.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    name = json['name'];
    userType = json['userType'];
    loginRetryLimit = json['loginRetryLimit'];
    sId = json['_id'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    isDeleted = json['isDeleted'];
    isActive = json['isActive'];
    sV = json['__v'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (username != null) {
      data['username'] = username;
    }
    if (email != null) {
      data['email'] = email;
    }
    if (name != null) {
      data['name'] = name;
    }
    if (userType != null) {
      data['userType'] = userType;
    }
    if (loginRetryLimit != null) {
      data['loginRetryLimit'] = loginRetryLimit;
    }
    if (sId != null) {
      data['_id'] = sId;
    }
    if (createdAt != null) {
      data['createdAt'] = createdAt;
    }
    if (updatedAt != null) {
      data['updatedAt'] = updatedAt;
    }
    if (isDeleted != null) {
      data['isDeleted'] = isDeleted;
    }
    if (isActive != null) {
      data['isActive'] = isActive;
    }
    if (sV != null) {
      data['__v'] = sV;
    }
    if (token != null) {
      data['token'] = token;
    }
    return data;
  }
}
