import 'dart:io';

import 'package:flutter/foundation.dart';

class PlaceLocation {
  final double latitude;
  final double longtitude;
  final String address;

  PlaceLocation({
    @required this.latitude,
    @required this.longtitude,
    this.address,
  });
}

class Place {
  final String id;
  final String title;
  final PlaceLocation locaton;
  final File image;

  Place(
      {@required this.id,
      @required this.title,
      @required this.locaton,
      @required this.image});
}
