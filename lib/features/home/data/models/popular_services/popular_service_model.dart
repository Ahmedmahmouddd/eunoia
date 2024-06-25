class PopularService {
  String? id;
  String? businessName;
  String? location;
  String? avatar;
  double? ratingsAverage;
  String? datumId;
  String? about;

  PopularService.fromJson({required Map<String, dynamic> data}) {
    id = data["_id"];
    businessName = data["businessName"];
    location = data["location"];
    avatar = data["avatar"];
    about = data["about"];
    ratingsAverage = data["ratingsAverage"]?.toDouble();
    datumId = data["id"];
  }
}
