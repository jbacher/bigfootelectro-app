import 'package:bigfoot_electro/models/artist.dart';
import 'package:flutter/material.dart';

class ArtistFocusScreen extends StatefulWidget {
  final Artist artist; 

  const ArtistFocusScreen({this.artist});
  
  @override
  State<StatefulWidget> createState() {
    return _ArtistFocusState();
  }
}

class _ArtistFocusState extends State<ArtistFocusScreen> {
  Artist _artist = this.widget.artist
  @override
}