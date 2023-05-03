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
    //fromJson named constructor work of initialising variables
    companyName = json["company_Name"];
    establishedOfCompany = json["established_Of_Company"];
    founderOfCompany = json["founder_of_company"];
    chairmanOfCompany = json["chairman_of_company"];
    informationAboutCompany = (json["information_about_company"] as List)
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
    headquarters = json["headquarters"];
    brand = json["brand"];
    number = json["number"];
  }
}
