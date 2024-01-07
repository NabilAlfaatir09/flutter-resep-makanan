class ResepModel {
  final String name, images, totalTime, displayName;
  final double rating;

  ResepModel({
    required this.name,
    required this.images,
    required this.rating,
    required this.totalTime,
    required this.displayName,
  });

  factory ResepModel.fromJson(dynamic json) {
    return ResepModel(
      name: json['name'] as String,
      images: json['images'][0]['hostedLargeUrl'] as String,
      rating: json['rating'] as double,
      totalTime: json['totalTime'] as String,
      displayName: json['displayName'] as String,
    );
  }

  static List<ResepModel> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return ResepModel.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return 'Recipe {name: $name, image: $images, rating: $rating, totalTime: $totalTime}';
  }
}
