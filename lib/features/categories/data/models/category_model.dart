class Category {
  Category({
    required this.id,
    required this.businessName,
    required this.about,
    required this.location,
    required this.businessCategory,
    required this.phoneNumber,
    required this.images,
    required this.owner,
    required this.ratingsQuantity,
    required this.createdAt,
    required this.updatedAt,
    required this.latitude,
    required this.longitude,
    required this.djId,
  });

  final String? id;
  final String? businessName;
  final String? about;
  final String? location;
  final String? businessCategory;
  final String? phoneNumber;
  final List<dynamic> images;
  final String? owner;
  final int? ratingsQuantity;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? latitude;
  final String? longitude;
  final String? djId;

  factory Category.fromJson({required Map<String, dynamic> data}) {
    return Category(
      id: data["_id"],
      businessName: data["businessName"],
      about: data["about"],
      location: data["location"],
      businessCategory: data["businessCategory"],
      phoneNumber: data["phoneNumber"],
      images: data["images"],
      owner: data["owner"],
      ratingsQuantity: data["ratingsQuantity"],
      createdAt: DateTime.tryParse(data["createdAt"] ?? ""),
      updatedAt: DateTime.tryParse(data["updatedAt"] ?? ""),
      latitude: data["latitude"],
      longitude: data["longitude"],
      djId: data["id"],
    );
  }
}
