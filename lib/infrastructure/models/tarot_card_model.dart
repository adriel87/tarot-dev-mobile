import 'dart:convert';

class TarotCard {
    final List<TarotCardElement> tarotCards;

    TarotCard({
        required this.tarotCards,
    });

    TarotCard copyWith({
        List<TarotCardElement>? tarotCards,
    }) => 
        TarotCard(
            tarotCards: tarotCards ?? this.tarotCards,
        );

    factory TarotCard.fromRawJson(String str) => TarotCard.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TarotCard.fromJson(Map<String, dynamic> json) => TarotCard(
        tarotCards: List<TarotCardElement>.from(json["tarotCards"].map((x) => TarotCardElement.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "tarotCards": List<dynamic>.from(tarotCards.map((x) => x.toJson())),
    };
}

class TarotCardElement {
    final String name;
    final String description;
    final String love;
    final String luck;
    final String deploy;
    final String ilove;
    final String iluck;
    final String ideploy;

    TarotCardElement({
        required this.name,
        required this.description,
        required this.love,
        required this.luck,
        required this.deploy,
        required this.ilove,
        required this.iluck,
        required this.ideploy,
    });

    TarotCardElement copyWith({
        String? name,
        String? description,
        String? love,
        String? luck,
        String? deploy,
        String? ilove,
        String? iluck,
        String? ideploy,
    }) => 
        TarotCardElement(
            name: name ?? this.name,
            description: description ?? this.description,
            love: love ?? this.love,
            luck: luck ?? this.luck,
            deploy: deploy ?? this.deploy,
            ilove: ilove ?? this.ilove,
            iluck: iluck ?? this.iluck,
            ideploy: ideploy ?? this.ideploy,
        );

    factory TarotCardElement.fromRawJson(String str) => TarotCardElement.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory TarotCardElement.fromJson(Map<String, dynamic> json) => TarotCardElement(
        name: json["name"],
        description: json["description"],
        love: json["love"],
        luck: json["luck"],
        deploy: json["deploy"],
        ilove: json["ilove"],
        iluck: json["iluck"],
        ideploy: json["ideploy"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "description": description,
        "love": love,
        "luck": luck,
        "deploy": deploy,
        "ilove": ilove,
        "iluck": iluck,
        "ideploy": ideploy,
    };
}
