class UserModel {
  String? companyName;
  String? establishedOfCompany;
  String? founderOfCompany;
  String? chairmanOfCompany;
  List<Company>? informationAboutCompany;

  UserModel({
    this.companyName,
    this.establishedOfCompany,
    this.founderOfCompany,
    this.chairmanOfCompany,
    this.informationAboutCompany,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    companyName = json["companyName"];
    establishedOfCompany = json["establishedOfCompany"];
    founderOfCompany = json["founderOfCompany"];
    chairmanOfCompany = json["chairmanOfCompany"];
    informationAboutCompany = (json["informationAboutCompany"] as List)
        .map((value) => Company.fromJson(value))
        .toList();
  }
}

class Company {
  String? headquarters;
  String? brand;
  int? number;

  Company({
    this.headquarters,
    this.brand,
    this.number,
  });

  Company.fromJson(Map<String, dynamic> json) {
    headquarters = json[" headquarters"];
    brand = json["brand"];
    number = json["number"];
  }
}
