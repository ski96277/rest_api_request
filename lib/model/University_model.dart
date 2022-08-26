class UniversityModel {
  UniversityModel({
      this.domains, 
      this.alphaTwoCode, 
      this.country, 
      this.webPages, 
      this.name, 
      this.stateprovince,});

  UniversityModel.fromJson(dynamic json) {
    domains = json['domains'] != null ? json['domains'].cast<String>() : [];
    alphaTwoCode = json['alpha_two_code'];
    country = json['country'];
    webPages = json['web_pages'] != null ? json['web_pages'].cast<String>() : [];
    name = json['name'];
    stateprovince = json['state-province'];
  }
  List<String> domains;
  String alphaTwoCode;
  String country;
  List<String> webPages;
  String name;
  dynamic stateprovince;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['domains'] = domains;
    map['alpha_two_code'] = alphaTwoCode;
    map['country'] = country;
    map['web_pages'] = webPages;
    map['name'] = name;
    map['state-province'] = stateprovince;
    return map;
  }

}