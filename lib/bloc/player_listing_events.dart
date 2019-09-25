import 'package:flutter/material.dart';
import 'package:flutter_bloc_example/models/nations.dart';

abstract class PlayerListingEvent{}

class CountrySelectedEvent extends PlayerListingEvent{
  final NationModel nationModel;
  CountrySelectedEvent({@required this.nationModel}) : assert(nationModel!=null);
}
class SearchTextChangedEvent extends PlayerListingEvent {
  final String searchTerm;

  SearchTextChangedEvent({@required this.searchTerm}) : assert(searchTerm != null);
}
