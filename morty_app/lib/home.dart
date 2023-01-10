import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Home extends StatelessWidget {
  
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
          child: ShowCharacters(),
        ),
      ),
    );
  }
}


//funtionalities
class Api extends GetConnect {

  Future <Response> getApi() => get('https://rickandmortyapi.com/api/character');

}


//widget
class  ShowCharacters  extends StatelessWidget {
  
  const ShowCharacters( { super.key } );

  @override
  Widget build(BuildContext context) {
  
    CharacterState state = Get.put( CharacterState() );

    return SafeArea(
      child: Column(
      children: [
        ...state.characters.map((element) => CardCharacter(
          name: element['name'],
          specie: element['species'],
          img: element['image'],
        ))
      ],
      ),
    );
  
  }


}



class CardCharacter extends StatelessWidget {
  
  CardCharacter({super.key, this.name, this.specie, this.img });
  
  String? name;
  String? specie;
  String? img;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
              child: Image.network(
                '$img', 
                height: 30.0,
                width: 30.0, 
                fit: BoxFit.cover,
              ),
            ),
            const Padding(padding: EdgeInsets.only(left: 10.0)),
            Column(
              children: [
                Text('$name'),
                Text('$specie')
              ],
            )
        ],
      ),
    );
  }

}


//states
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

