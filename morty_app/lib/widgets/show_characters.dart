import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../states/character_state.dart';
import 'character.dart';

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