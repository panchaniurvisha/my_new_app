import 'package:flutter/material.dart';
import 'package:my_app/data/user.dart';
import 'package:my_app/model/user_model.dart';

class ModelScreen extends StatefulWidget {
  const ModelScreen({Key? key}) : super(key: key);

  @override
  State<ModelScreen> createState() => _ModelScreenState();
}

class _ModelScreenState extends State<ModelScreen> {
  UserModel? userModel = UserModel.fromJson(userData);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Model Screen"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Get Data From model",
                style: TextStyle(color: Colors.orange, fontSize: 20)),
            Text("(1)Company Name----->${userModel!.companyName!}"),
            Text("(2)founder_of_company----->${userModel!.founderOfCompany!}"),
            Text(
                "(3)chairman_of_company----->${userModel!.chairmanOfCompany!}"),
            Text(
                "(4)Headquarters--->${userModel!.informationAboutCompany![0].headquarters}"),
            Text("(5)brand--->${userModel!.informationAboutCompany![0].brand}"),
            Text(
                "(6)number--->${userModel!.informationAboutCompany![0].number}"),
            Text(
                "(7)Second Headquarters--->${userModel!.informationAboutCompany![1].headquarters}"),
          ],
        ),
      ),
    );
  }
}
