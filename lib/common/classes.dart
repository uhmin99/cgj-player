class MusicItem {
  String title;
  String artist;
  AudioLink audioLink;
  String imageUrl;
  double? playLengthSec;  //total length of music
  double? playedUntil;    //indicates that this music has been played until this seconds

  MusicItem(this.title, this.artist, this.audioLink, this.imageUrl, [this.playedUntil = 0]);
}

enum AudioLinkType {url, asset}

class AudioLink {
  AudioLinkType type;
  String link;

  AudioLink(this.type, this.link);
}