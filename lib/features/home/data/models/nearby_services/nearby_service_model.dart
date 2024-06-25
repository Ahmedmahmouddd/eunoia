class NearbyService {
  String? id;
  String? businessName;
  String? location;
  String? businessCategory;
  String? phoneNumber;
  String? avatar;
  String? owner;
  String? createdAt;
  String? updatedAt;
  String? imageCover;
  num? ratingsAverage;
  String? datumId;
  String? about;
  String? startFrom;
  int? ratingsQuantity;

  NearbyService.fromJson({required Map<String, dynamic> data}) {
    id = data["_id"];
    businessName = data["businessName"];
    location = data["location"];
    businessCategory = data["businessCategory"];
    phoneNumber = data["phoneNumber"];
    avatar = data["avatar"];
    owner = data["owner"];
    ratingsQuantity = data["ratingsQuantity"];
    createdAt = data["createdAt"];
    updatedAt = data["updatedAt"];
    imageCover = data["imageCover"];
    ratingsAverage = data["ratingsAverage"];
    datumId = data["id"];
    about = data["about"];
    startFrom = data["startFrom"];
  }
}
