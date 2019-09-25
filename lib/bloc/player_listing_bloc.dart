import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_example/bloc/player_listing_events.dart';
import 'package:flutter_bloc_example/bloc/player_listing_states.dart';
import 'package:flutter_bloc_example/models/api_models.dart';
import 'package:flutter_bloc_example/services/repository.dart';

class PlayerListingBloc extends Bloc<PlayerListingEvent,PlayerListingState>{
  final PlayerRepository playerRepository;
  PlayerListingBloc({this.playerRepository}):assert(playerRepository!=null);
  @override
  PlayerListingState get initialState => PlayerUninitializedState();

  @override
  Stream<PlayerListingState> mapEventToState(PlayerListingEvent event) async*{
    if(event is CountrySelectedEvent)
    {
      yield PlayerFetchingState();
      try{
      List<Players>players=await playerRepository.fetchPlayersByCountry(event.nationModel.countryId);
      if(players.length==0)
      {
        yield PlayerEmptyState();
      }
      yield PlayerFetchedState(players: players);
       }catch(_){
         yield PlayerErrorState();
       }
    }
  }
}