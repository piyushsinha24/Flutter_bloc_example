import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/models/nations.dart';

abstract class PlayerListingEvent{}

class CountrySelectedEvent extends PlayerListingEvent{
  final NationModel nationModel;
  CountrySelectedEvent({@required this.nationModel}) : assert(nationModel!=null);
}