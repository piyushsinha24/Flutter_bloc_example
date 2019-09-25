import 'package:meta/meta.dart';

class NationModel {
  final String nationName;
  final String imagePath;
  final String countryId;

  NationModel({@required this.nationName, @required this.imagePath, @required this.countryId});
}

List<NationModel> nations = [
  NationModel(nationName: "Argentina", imagePath: "images/flags/argentina.png", countryId: "52"),
  NationModel(nationName: "Brazil", imagePath: "images/flags/brazil.png", countryId: "54"),
  NationModel(nationName: "Germany", imagePath: "images/flags/germany.png", countryId: "21"),
  NationModel(nationName: "England", imagePath: "images/flags/england.png", countryId: "14"),
  NationModel(nationName: "France", imagePath: "images/flags/france.png", countryId: "18"),
  NationModel(nationName: "Italy", imagePath: "images/flags/italy.png", countryId: "27"),
  NationModel(nationName: "Spain", imagePath: "images/flags/spain.png", countryId: "45")
];