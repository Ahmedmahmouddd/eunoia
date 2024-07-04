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
  num? ratingsAverage;
  String? startFrom;

  factory TopService.fromJson({required Map<String, dynamic> data}) {
    return TopService(
      id: data["_id"],
      businessName: data["businessName"],
      about: data["about"],
      location: data["location"],
      businessCategory: data["businessCategory"],
      phoneNumber: data["phoneNumber"],
      avatar: data["avatar"],
      imageCover: data["imageCover"],
      owner: data["owner"],
      ratingsQuantity: data["ratingsQuantity"],
      datumId: data["id"],
      ratingsAverage: data["ratingsAverage"],
      startFrom: data["startFrom"],
    );
  }

  TopService(
      {required this.id,
      required this.businessName,
      required this.about,
      required this.avatar,
      required this.businessCategory,
      required this.datumId,
      required this.imageCover,
      required this.location,
      required this.owner,
      required this.phoneNumber,
      required this.ratingsAverage,
      required this.ratingsQuantity,
      required this.startFrom});
}
