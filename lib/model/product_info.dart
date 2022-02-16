class ProductInfo {
  ProductInfo({
    required this.data,
  });
  late final List<Data> data;

  ProductInfo.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data(
      {required this.image,
      required this.title,
      required this.noOfLike,
      required this.noOfDisLike,
      required this.rate});
  late final String image;
  late final String title;
  late final int noOfLike;
  late final int noOfDisLike;
  late final double rate;

  Data.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    title = json['title'];
    noOfLike = json['noOfLike'];
    noOfDisLike = json['noOfDisLike'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['image'] = image;
    _data['title'] = title;
    _data['noOfLike'] = noOfLike;
    _data['noOfDisLike'] = noOfDisLike;
    _data['rate'] = rate;
    return _data;
  }
}
