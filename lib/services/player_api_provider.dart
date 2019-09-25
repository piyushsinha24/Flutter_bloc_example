import 'dart:convert';

import 'package:flutter_bloc_example/models/api_models.dart';
import 'package:http/http.dart' as http;
class PlayerApiProvider{
  
  String baseUrl = "https://www.easports.com/fifa/ultimate-team/api/fut/item?";
  final successCode = 200;

  Future<List<Players>>fetchPlayersByCountry(String countryId)async{
    final response=await http.get('$baseUrl+country=+$countryId');
    final responseString=jsonDecode(response.body);

    if(response.statusCode==200){
       return ApiResult.fromJson(responseString).items;
    }
    else
    {
      throw Exception('Failed to load the player');
    }
  }
}