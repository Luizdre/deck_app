import 'package:flutter/material.dart';

class Utils {
  String getImageByAttribute(String attribute) {
    switch (attribute) {
      case 'DARK':
        return 'assets/attribute/DARK.jpg';
      case 'DIVINE':
        return 'assets/attribute/DIVINE.jpg';
      case 'EARTH':
        return 'assets/attribute/EARTH.jpg';
      case 'FIRE':
        return 'assets/attribute/FIRE.jpg';
      case 'LIGHT':
        return 'assets/attribute/LIGHT.jpg';
      case 'WATER':
        return 'assets/attribute/WATER.jpg';
      case 'WIND':
        return 'assets/attribute/WIND.jpg';
      default:
        return '';
    }
  }

  String getImageByRace(String race) {
    switch (race) {
      case "Aqua":
        return 'assets/icons/Aqua.png';
      case "Beast":
        return 'assets/icons/Beast.png';
      case "Beast-Warrior":
        return 'assets/icons/Beast-Warrior.png';
      case "Creator-God":
        return 'assets/icons/Fairy.png';
      case "Counter":
        return 'assets/icons/Counter.png';
      case "Continuous":
        return 'assets/icons/Continuous.png';
      case "Cyberse":
        return 'assets/icons/Machine.png';
      case "Dragon":
        return 'assets/icons/Dragon.png';
      case "Dinosaur":
        return 'assets/icons/Dinosaur.png';
      case "Divine-Beast":
        return 'assets/icons/Divine-Beast.png';
      case "Equip":
        return 'assets/icons/Equip.png';
      case "Fairy":
        return 'assets/icons/Fairy.png';
      case "Field":
        return 'assets/icons/Field.png';
      case "Fiend":
        return 'assets/icons/Fiend.png';
      case "Fish":
        return 'assets/icons/Fish.png';
      case "Insect":
        return 'assets/icons/Insect.png';
      case "Machine":
        return 'assets/icons/Machine.png';
      case "Normal":
        return 'assets/icons/Normal.png';
      case "Psychic":
        return 'assets/icons/Psychic.png';
      case "Plant":
        return 'assets/icons/Plant.png';
      case "Pyro":
        return 'assets/icons/Pyro.png';
      case "Quick-Play":
        return 'assets/icons/Quick-Play.png';
      case "Reptile":
        return 'assets/icons/Wyrm.png';
      case "Ritual":
        return 'assets/icons/Ritual.png';
      case "Rock":
        return 'assets/icons/Rock.png';
      case "Sea Serpent":
        return 'assets/icons/Sea Serpent.png';
      case "Spellcaster":
        return 'assets/icons/Spellcaster.png';
      case "Thunder":
        return 'assets/icons/Thunder.png';
      case "Warrior":
        return 'assets/icons/Warrior.png';
      case "Winged Beast":
        return 'assets/icons/Winged Beast.png';
      case "Wyrm":
        return 'assets/icons/Wyrm.png';
      case "Zombie":
        return 'assets/icons/Zombie.png';
      case "Bonz":
        return 'null.png';
      case "Kaiba":
        return 'null.png';
      case "Keith":
        return 'null.png';
      case "Mako":
        return 'null.png';
      case "Mai":
        return 'null.png';
      case "Yami Yugi":
        return 'null.png';
      case "Espa Roba":
        return 'null.png';
      case "Joey":
        return 'null.png';
      case "Seto Kaiba":
        return 'null.png';
      case "Andrew":
        return 'null.png';
      case "Arkana":
        return 'null.png';
      case "Pegasus":
        return 'null.png';
      case "Ishizu":
        return 'null.png';
      case "Emma":
        return 'null.png';
      case "Ishizu Ishtar":
        return 'null.png';
      case "Odion":
        return 'null.png';
      case "Weevil":
        return 'null.png';
      case "Yami Marik":
        return 'null.png';
      case "Joey Wheeler":
        return 'null.png';
      case "Yami Bakura":
        return 'null.png';
      case "Rex":
        return 'null.png';
      case "Mai Valentine":
        return 'null.png';
      case "Yugi":
        return 'null.png';
      case "Tea Gardner":
        return 'null.png';
      case "Lumis Umbra":
        return 'null.png';
      case "David":
        return 'null.png';
      case "7 Completed":
        return 'null.png';
      case "Christine":
        return 'null.png';
      default:
        return '';
    }
  }

  Color getColor(String type) {
    switch (type) {
      case "Spell Card":
        return const Color.fromRGBO(4, 145, 126, 1);
      case "Effect Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Flip Effect Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Pendulum Effect Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Pendulum Tuner Effect Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Union Effect Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Tuner Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Gemini Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Spirit Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Toon Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Pendulum Flip Effect Monster":
        return const Color.fromRGBO(186, 83, 34, 1);
      case "Normal Monster":
        return const Color.fromRGBO(192, 140, 62, 1);
      case "Normal Tuner Monster":
        return const Color.fromRGBO(192, 140, 62, 1);
      case "Pendulum Normal Monster":
        return const Color.fromRGBO(192, 140, 62, 1);
      case "Trap Card":
        return const Color.fromRGBO(165, 20, 117, 1);
      case "Fusion Monster":
        return const Color.fromRGBO(134, 62, 147, 1);
      case "Pendulum Effect Fusion Monster":
        return const Color.fromRGBO(134, 62, 147, 1);
      case "Link Monster":
        return const Color.fromRGBO(9, 67, 126, 1);
      case "Ritual Effect Monster":
        return const Color.fromRGBO(71, 111, 181, 1);
      case "Ritual Monster":
        return const Color.fromRGBO(71, 111, 181, 1);
      case "Pendulum Effect Ritual Monster":
        return const Color.fromRGBO(71, 111, 181, 1);
      case "Skill Card":
        return const Color.fromRGBO(45, 76, 135, 1);
      case "XYZ Monster":
        return const Color.fromRGBO(50, 52, 54, 1);
      case "XYZ Pendulum Effect Monster":
        return const Color.fromRGBO(50, 52, 54, 1);
      case "Token":
        return const Color.fromRGBO(50, 52, 54, 1);
      case "Synchro Monster":
        return const Color.fromRGBO(221, 218, 215, 1);
      case "Synchro Pendulum Effect Monster":
        return const Color.fromRGBO(221, 218, 215, 1);
      case "Synchro Tuner Monster":
        return const Color.fromRGBO(221, 218, 215, 1);
      default:
        return Colors.transparent;
    }
  }
}
