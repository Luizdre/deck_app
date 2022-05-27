class CardModel {
  int? id;
  String? name;
  String? type;
  String? desc;
  String? race;
  String? archetype;
  List<CardSets>? cardSets;
  List<CardImages>? cardImages;
  List<CardPrices>? cardPrices;
  int? atk;
  int? def;
  int? level;
  String? attribute;
  BanlistInfo? banlistInfo;
  int? scale;
  int? linkval;
  List? linkmarkers;

  CardModel(
      {this.id,
      this.name,
      this.type,
      this.desc,
      this.race,
      this.archetype,
      this.cardSets,
      this.cardImages,
      this.cardPrices,
      this.atk,
      this.def,
      this.level,
      this.attribute,
      this.banlistInfo,
      this.scale,
      this.linkval,
      this.linkmarkers});

  CardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    type = json['type'];
    desc = json['desc'];
    race = json['race'];
    archetype = json['archetype'];
    if (json['card_sets'] != null) {
      cardSets = <CardSets>[];
      json['card_sets'].forEach((v) {
        cardSets!.add(CardSets.fromJson(v));
      });
    }
    if (json['card_images'] != null) {
      cardImages = <CardImages>[];
      json['card_images'].forEach((v) {
        cardImages!.add(CardImages.fromJson(v));
      });
    }
    if (json['card_prices'] != null) {
      cardPrices = <CardPrices>[];
      json['card_prices'].forEach((v) {
        cardPrices!.add(CardPrices.fromJson(v));
      });
    }
    atk = json['atk'];
    def = json['def'];
    level = json['level'];
    attribute = json['attribute'];
    banlistInfo = json['banlist_info'] != null
        ? BanlistInfo.fromJson(json['banlist_info'])
        : null;
    scale = json['scale'];
    linkval = json['linkval'];
    linkmarkers = json['linkmarkers'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['name'] = name;
    data['type'] = type;
    data['desc'] = desc;
    data['race'] = race;
    data['archetype'] = archetype;
    if (cardSets != null) {
      data['card_sets'] = cardSets!.map((v) => v.toJson()).toList();
    }
    if (cardImages != null) {
      data['card_images'] = cardImages!.map((v) => v.toJson()).toList();
    }
    if (cardPrices != null) {
      data['card_prices'] = cardPrices!.map((v) => v.toJson()).toList();
    }
    data['atk'] = atk;
    data['def'] = def;
    data['level'] = level;
    data['attribute'] = attribute;
    if (banlistInfo != null) {
      data['banlist_info'] = banlistInfo!.toJson();
    }
    data['scale'] = scale;
    data['linkval'] = linkval;
    data['linkmarkers'] = linkmarkers;
    return data;
  }
}

class CardSets {
  String? setName;
  String? setCode;
  String? setRarity;
  String? setRarityCode;
  String? setPrice;

  CardSets(
      {this.setName,
      this.setCode,
      this.setRarity,
      this.setRarityCode,
      this.setPrice});

  CardSets.fromJson(Map<String, dynamic> json) {
    setName = json['set_name'];
    setCode = json['set_code'];
    setRarity = json['set_rarity'];
    setRarityCode = json['set_rarity_code'];
    setPrice = json['set_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['set_name'] = setName;
    data['set_code'] = setCode;
    data['set_rarity'] = setRarity;
    data['set_rarity_code'] = setRarityCode;
    data['set_price'] = setPrice;
    return data;
  }
}

class CardImages {
  int? id;
  String? imageUrl;
  String? imageUrlSmall;

  CardImages({this.id, this.imageUrl, this.imageUrlSmall});

  CardImages.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image_url'];
    imageUrlSmall = json['image_url_small'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['id'] = id;
    data['image_url'] = imageUrl;
    data['image_url_small'] = imageUrlSmall;
    return data;
  }
}

class CardPrices {
  String? cardmarketPrice;
  String? tcgplayerPrice;
  String? ebayPrice;
  String? amazonPrice;
  String? coolstuffincPrice;

  CardPrices(
      {this.cardmarketPrice,
      this.tcgplayerPrice,
      this.ebayPrice,
      this.amazonPrice,
      this.coolstuffincPrice});

  CardPrices.fromJson(Map<String, dynamic> json) {
    cardmarketPrice = json['cardmarket_price'];
    tcgplayerPrice = json['tcgplayer_price'];
    ebayPrice = json['ebay_price'];
    amazonPrice = json['amazon_price'];
    coolstuffincPrice = json['coolstuffinc_price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['cardmarket_price'] = cardmarketPrice;
    data['tcgplayer_price'] = tcgplayerPrice;
    data['ebay_price'] = ebayPrice;
    data['amazon_price'] = amazonPrice;
    data['coolstuffinc_price'] = coolstuffincPrice;
    return data;
  }
}

class BanlistInfo {
  String? banTcg;
  String? banOcg;
  String? banGoat;

  BanlistInfo({this.banTcg, this.banOcg, this.banGoat});

  BanlistInfo.fromJson(Map<String, dynamic> json) {
    banTcg = json['ban_tcg'];
    banOcg = json['ban_ocg'];
    banGoat = json['ban_goat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['ban_tcg'] = banTcg;
    data['ban_ocg'] = banOcg;
    data['ban_goat'] = banGoat;
    return data;
  }
}
