// To parse this JSON data, do
//
//     final temperatures = temperaturesFromJson(jsonString);

import 'dart:convert';

LoginModel temperaturesFromJson(String str) => LoginModel.fromJson(json.decode(str));

String temperaturesToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  int? code;
  String? status;
  Message? message;
  Data? data;

  LoginModel({
     this.code,
     this.status,
     this.message,
     this.data,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
    code: json["code"],
    status: json["status"],
    message: Message.fromJson(json["message"]),
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "status": status,
    "message": message?.toJson(),
    "data": data?.toJson(),
  };
}

class Data {
  User user;
  String accessToken;
  String tokenType;

  Data({
    required this.user,
    required this.accessToken,
    required this.tokenType,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    user: User.fromJson(json["user"]),
    accessToken: json["access_token"],
    tokenType: json["token_type"],
  );

  Map<String, dynamic> toJson() => {
    "user": user.toJson(),
    "access_token": accessToken,
    "token_type": tokenType,
  };
}

class User {
  int id;
  String username;
  dynamic firstname;
  String lastname;
  String email;
  String mobile;
  int refBy;
  String refCode;
  int planId;
  DateTime expireDate;
  int paidStatus;
  DateTime paidDate;
  String depositWallet;
  String interestWallet;
  String totalInvest;
  String totalEarn;
  String totalStaking;
  int status;
  String image;
  String aadharNo;
  String panNo;
  int kycStatus;
  String bankName;
  String accountNumber;
  String ifscCode;
  Address address;
  int ev;
  int sv;
  dynamic verCode;
  dynamic verCodeSendAt;
  int ts;
  int tv;
  dynamic tsc;
  dynamic provider;
  dynamic providerId;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic walletAddress;
  int walletStatus;
  int dailyLimit;

  User({
    required this.id,
    required this.username,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.mobile,
    required this.refBy,
    required this.refCode,
    required this.planId,
    required this.expireDate,
    required this.paidStatus,
    required this.paidDate,
    required this.depositWallet,
    required this.interestWallet,
    required this.totalInvest,
    required this.totalEarn,
    required this.totalStaking,
    required this.status,
    required this.image,
    required this.aadharNo,
    required this.panNo,
    required this.kycStatus,
    required this.bankName,
    required this.accountNumber,
    required this.ifscCode,
    required this.address,
    required this.ev,
    required this.sv,
    required this.verCode,
    required this.verCodeSendAt,
    required this.ts,
    required this.tv,
    required this.tsc,
    required this.provider,
    required this.providerId,
    required this.createdAt,
    required this.updatedAt,
    required this.walletAddress,
    required this.walletStatus,
    required this.dailyLimit,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    username: json["username"],
    firstname: json["firstname"],
    lastname: json["lastname"],
    email: json["email"],
    mobile: json["mobile"],
    refBy: json["ref_by"],
    refCode: json["ref_code"],
    planId: json["plan_id"],
    expireDate: DateTime.parse(json["expire_date"]),
    paidStatus: json["paid_status"],
    paidDate: DateTime.parse(json["paid_date"]),
    depositWallet: json["deposit_wallet"],
    interestWallet: json["interest_wallet"],
    totalInvest: json["total_invest"],
    totalEarn: json["total_earn"],
    totalStaking: json["total_staking"],
    status: json["status"],
    image: json["image"],
    aadharNo: json["aadhar_no"],
    panNo: json["pan_no"],
    kycStatus: json["kyc_status"],
    bankName: json["bank_name"],
    accountNumber: json["account_number"],
    ifscCode: json["ifsc_code"],
    address: Address.fromJson(json["address"]),
    ev: json["ev"],
    sv: json["sv"],
    verCode: json["ver_code"],
    verCodeSendAt: json["ver_code_send_at"],
    ts: json["ts"],
    tv: json["tv"],
    tsc: json["tsc"],
    provider: json["provider"],
    providerId: json["provider_id"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    walletAddress: json["wallet_address"],
    walletStatus: json["wallet_status"],
    dailyLimit: json["daily_limit"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "username": username,
    "firstname": firstname,
    "lastname": lastname,
    "email": email,
    "mobile": mobile,
    "ref_by": refBy,
    "ref_code": refCode,
    "plan_id": planId,
    "expire_date": expireDate.toIso8601String(),
    "paid_status": paidStatus,
    "paid_date": paidDate.toIso8601String(),
    "deposit_wallet": depositWallet,
    "interest_wallet": interestWallet,
    "total_invest": totalInvest,
    "total_earn": totalEarn,
    "total_staking": totalStaking,
    "status": status,
    "image": image,
    "aadhar_no": aadharNo,
    "pan_no": panNo,
    "kyc_status": kycStatus,
    "bank_name": bankName,
    "account_number": accountNumber,
    "ifsc_code": ifscCode,
    "address": address.toJson(),
    "ev": ev,
    "sv": sv,
    "ver_code": verCode,
    "ver_code_send_at": verCodeSendAt,
    "ts": ts,
    "tv": tv,
    "tsc": tsc,
    "provider": provider,
    "provider_id": providerId,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "wallet_address": walletAddress,
    "wallet_status": walletStatus,
    "daily_limit": dailyLimit,
  };
}

class Address {
  String address;
  String state;
  String zip;
  String country;
  String city;

  Address({
    required this.address,
    required this.state,
    required this.zip,
    required this.country,
    required this.city,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    address: json["address"],
    state: json["state"],
    zip: json["zip"],
    country: json["country"],
    city: json["city"],
  );

  Map<String, dynamic> toJson() => {
    "address": address,
    "state": state,
    "zip": zip,
    "country": country,
    "city": city,
  };
}

class Message {
  List<String> success;

  Message({
    required this.success,
  });

  factory Message.fromJson(Map<String, dynamic> json) => Message(
    success: List<String>.from(json["success"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "success": List<dynamic>.from(success.map((x) => x)),
  };
}
