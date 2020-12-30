class Countrymodel {
  String countryname;
  String region;
  String subregion;
  int population;
  String demonym;
  Countrymodel({this.countryname, this.region, this.demonym});

  Countrymodel.fromJson(Map<String, dynamic> json) {
    countryname = json['name'];
    region = json['region'];
    demonym = json['capital'];
  }
}
