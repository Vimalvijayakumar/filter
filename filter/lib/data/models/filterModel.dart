class FilterModel {
  final int? id;
  final String? guid;
  final String? slug;
  final String? name;

  FilterModel({this.id, this.guid, this.slug, this.name});
  factory FilterModel.fromjson(Map<String, dynamic> json) {
    return FilterModel(
        id: json["id"],
        guid: json["Guid"],
        slug: json["slug"],
        name: json["name"]);
  }

  Map<String, dynamic> toJson() =>
      {"id": id, "Guid": guid, "slug": slug, "name": name};
}
