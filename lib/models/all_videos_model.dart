class AllVideosModel {
  final String image;
  final String name;

  AllVideosModel({required this.image, required this.name});
}

final List<AllVideosModel> allVideosModel = [
  AllVideosModel(
      image: "assets/images/spirulina.png",
      name: "On&On Spirulina Gold 60 Vegetarian Capsules"),
  AllVideosModel(
      image: "assets/images/elements.png",
      name: "On&On Spirulina Gold 60 Vegetarian Capsules"),
  AllVideosModel(
      image: "assets/images/grass.png",
      name: "On&On Spirulina Gold 60 Vegetarian Capsules")
];
