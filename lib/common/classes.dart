class MusicItem {
  int musicId;
  String title;
  String artist;
  AudioLink audioLink;
  ImageLink imageLink;
  double? playLengthSec;  //total length of music
  double? playedUntil;    //indicates that this music has been played until this seconds

  MusicItem(this.musicId, this.title, this.artist, this.audioLink, this.imageLink, [this.playedUntil = 0]);
}

enum LinkType {url, asset}

class AudioLink {
  LinkType type;
  String link;

  AudioLink(this.type, this.link);
}

class ImageLink {
  LinkType type;
  String link;

  ImageLink(this.type, this.link);
}