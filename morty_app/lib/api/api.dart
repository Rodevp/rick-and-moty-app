import 'package:get/get.dart';

class Api extends GetConnect {

  Future <Response> getApi() => get('https://rickandmortyapi.com/api/character');

}