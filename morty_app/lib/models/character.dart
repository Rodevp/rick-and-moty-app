class Character {
    Character({
        this.id,
        this.name,
        this.status,
        this.species,
        this.type,
        this.gender,
        this.origin,
        this.location,
        this.image,
        this.episode,
        this.url,
        this.created,
    });

    int? id;
    String? name;
    String? status;
    String? species;
    String? type;
    String? gender;
    Location? origin;
    Location? location;
    String? image;
    List<String?>? episode;
    String? url;
    DateTime? created;
}

class Location {
    Location({
        this.name,
        this.url,
    });

    String? name;
    String? url;
}