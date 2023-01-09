import 'package:morty_app/models/character.dart';

class Response {
  Response({
    this.results,
    this.info
  });

  List<Character>?  results;
  Info? info; 

}


class Info {
    Info({
        this.count,
        this.pages,
        this.next,
        this.prev,
    });

    int? count;
    int? pages;
    String? next;
    dynamic prev;
}


