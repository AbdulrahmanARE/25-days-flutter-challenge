import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String itemImg;
  final String itemSpaWord;
  final String itemEngWord;
  final String itemSound;


  ItemModel({
    required this.itemImg,
    required this.itemSpaWord,
    required this.itemEngWord,
    required this.itemSound,
  });
  void playSound() async {
    final player = AudioPlayer();
    await player.play(AssetSource(itemSound));

  }
}
