import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../data/resep_model.dart';

class UtamaController extends GetxController {
  var resepModel = <ResepModel>[].obs;
  var isLoading = true.obs;

  Future<void> getRecipes() async {
    resepModel.value = await getRecipe();
    isLoading.value = false;
  }

  static Future<List<ResepModel>> getRecipe() async {
    var uri = Uri.https(
      'yummly2.p.rapidapi.com',
      '/feeds/list',
      {"limit": "24", "start": "0", "tag": "list.recipe.popular"},
    );

    final response = await http.get(
      uri,
      headers: {
        "x-rapidapi-key": "0257975948mshc8e35159c272c7ep138d7bjsn17c57f8758bc",
        "x-rapidapi-host": "yummly2.p.rapidapi.com"
      },
    );

    Map data = jsonDecode(response.body);
    List temp = [];

    for (var i in data['feed']) {
      temp.add(i['content']['details']);
    }

    return ResepModel.recipesFromSnapshot(temp);
  }

  @override
  void onInit() {
    getRecipes();
    super.onInit();
  }
}
