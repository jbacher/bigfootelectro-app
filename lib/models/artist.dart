import 'package:flutter/cupertino.dart';

class Artist {
  final String name;
  final String soundcloudLink = "https://soundcloud.com";
  final String twitterLink = "https://twitter.com";
  final String facebookLink = "https://facebook.com";
  final String instagramLink = "https://instagram.com";
  final String website = "https://google.com";
  final DateTime performanceTime; //might make this into a list
  // final String venue; //enum?

  const Artist(this.name, this.performanceTime);
  //will have time at some point, and an image perhaps?
}

// These will be edited to reflect the actual stage names
enum Stages {
  stage1,
  stage2
}

List artistsList = <Artist> [
  Artist("INFEKT", DateTime.parse("2020-05-22 12:00:04Z")),
  Artist("JANTSEN", DateTime.parse("2020-05-22 12:00:04Z")),
  Artist("PHUTUREPRIMITIVE", DateTime.parse("2020-05-22 12:30:04Z")),
  Artist("SHIVERZ", DateTime.parse("2020-05-22 13:00:04Z")),
  Artist("TEDDY KILLERZ", DateTime.parse("2020-05-22 14:00:04Z")),
  Artist("YHETI", DateTime.parse("2020-05-22 14:00:04Z")),
  Artist("TOADFACE", DateTime.parse("2020-05-22 14:30:04Z")),
  Artist("WALTERWILDE", DateTime.parse("2020-05-23 12:00:04Z")),
  Artist("BLANKFACE", DateTime.parse("2020-05-23 12:30:04Z")),
  Artist("LEVITATION JONES", DateTime.parse("2020-05-23 12:30:04Z")),
  Artist("5AM", DateTime.parse("2020-05-23 12:30:04Z")),
  Artist("WAX FUTURE", DateTime.parse("2020-05-23 13:30:04Z")),
  Artist("SUBJECT 31", DateTime.parse("2020-05-23 13:45:04Z")),
  Artist("ZUBHA", DateTime.parse("2020-05-24 12:00:04Z")),
  Artist("GRAMGREENE", DateTime.parse("2020-05-24 12:00:04Z")),
  Artist("TWEED", DateTime.parse("2020-05-24 13:00:04Z")),
  Artist("BACHERGANG", DateTime.parse("2020-05-24 14:00:04Z")),
  Artist("VAS MAJORITY", DateTime.parse("2020-05-24 14:30:04Z")),
  Artist("THE WIDDLER", DateTime.parse("2020-05-24 14:30:04Z")),
  Artist("PUSHLOOP", DateTime.parse("2020-05-24 14:30:04Z")),
];

