import 'package:get/get.dart';
import '../api/api.dart';

class CharacterState extends GetxController {

 var characters = [].obs;

 CharacterState() {
  getAllCharacters();
 }
 
 getAllCharacters () async {

  var response = await Api().getApi();
  characters.value = response.body['results'];
 }


}