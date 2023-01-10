import 'package:flutter/material.dart';

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