class Country {
  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String region;
  String subregion;
  int population;
  List<int> latlng;
  String demonym;
  int area;
  double gini;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;

  String cioc;

  Country(
      {this.name,
      this.topLevelDomain,
      this.alpha2Code,
      this.alpha3Code,
      this.callingCodes,
      this.capital,
      this.altSpellings,
      this.region,
      this.subregion,
      this.population,
      this.latlng,
      this.demonym,
      this.area,
      this.gini,
      this.timezones,
      this.borders,
      this.nativeName,
      this.numericCode,
     
      this.cioc});

Country.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    topLevelDomain = json['topLevelDomain'].cast<String>();
    alpha2Code = json['alpha2Code'];
    alpha3Code = json['alpha3Code'];
    callingCodes = json['callingCodes'].cast<String>();
    capital = json['capital'];
    altSpellings = json['altSpellings'].cast<String>();
    region = json['region'];
    subregion = json['subregion'];
    population = json['population'];
    latlng = json['latlng'].cast<int>();
    demonym = json['demonym'];
    area = json['area'];
    gini = json['gini'];
    timezones = json['timezones'].cast<String>();
    borders = json['borders'].cast<String>();
    nativeName = json['nativeName'];
    numericCode = json['numericCode'];
  
    cioc = json['cioc'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['topLevelDomain'] = this.topLevelDomain;
    data['alpha2Code'] = this.alpha2Code;
    data['alpha3Code'] = this.alpha3Code;
    data['callingCodes'] = this.callingCodes;
    data['capital'] = this.capital;
    data['altSpellings'] = this.altSpellings;
    data['region'] = this.region;
    data['subregion'] = this.subregion;
    data['population'] = this.population;
    data['latlng'] = this.latlng;
    data['demonym'] = this.demonym;
    data['area'] = this.area;
    data['gini'] = this.gini;
    data['timezones'] = this.timezones;
    data['borders'] = this.borders;
    data['nativeName'] = this.nativeName;
    data['numericCode'] = this.numericCode;
   
    data['cioc'] = this.cioc;
    return data;
  }
}
