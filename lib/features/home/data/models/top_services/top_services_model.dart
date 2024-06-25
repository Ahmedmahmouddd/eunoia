class TopService {
  String? id;
  String? businessName;
  String? about;
  String? location;
  String? businessCategory;
  String? phoneNumber;
  String? avatar;
  String? imageCover;
  String? owner;
  int? ratingsQuantity;
  String? datumId;
  double? ratingsAverage;
  String? startFrom;

  TopService.fromJson({required Map<String, dynamic> data}) {
    id = data["_id"];
    businessName = data["businessName"];
    about = data["about"];
    location = data["location"];
    businessCategory = data["businessCategory"];
    phoneNumber = data["phoneNumber"];
    avatar = data["avatar"];
    imageCover = data["imageCover"];
    owner = data["owner"];
    ratingsQuantity = data["ratingsQuantity"];
    datumId = data["id"];
    ratingsAverage = data["ratingsAverage"];
    startFrom = data["startFrom"];
  }
}
