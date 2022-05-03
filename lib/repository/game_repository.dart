import 'dart:convert';

import 'package:bloc_news_app/models/data_model.dart';
import 'package:http/http.dart' as http;

class GameRepository {
  String url = 'https://www.gamerpower.com/api/giveaways';
  Future<List<DataModel>?> fetchGamesData() async {
    final response = await http.Client().get(Uri.parse(url));

    if (response.statusCode == 200) {
      Iterable models = jsonDecode(response.body);
      List<DataModel> dataModels = [];
      for (var model in models) {
        DataModel dataModel = DataModel.fromJson(model);
        dataModels.add(dataModel);
      }
      return dataModels;
    } else {
      return null;
    }
  }
}
