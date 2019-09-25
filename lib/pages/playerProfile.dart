import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc_example/models/api_models.dart';

class PlayerProfile extends StatefulWidget {
  final Players players;
  PlayerProfile(this.players);
  @override
  _PlayerProfileState createState() => _PlayerProfileState();
}

class _PlayerProfileState extends State<PlayerProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Image.network(widget.players.nation.imageUrls.small),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.players.name.toUpperCase(),
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white10,
                  letterSpacing: 12.0,
                ),
              ),
            ),
            CircleAvatar(
              child: Image.network(widget.players.headshot.imgUrl),
              backgroundColor: Colors.transparent,
              radius: 75.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                height: 250.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: new BorderRadius.only(
                          bottomRight: const Radius.circular(80.0),
                          topRight: const Radius.circular(80.0)),
                      child: Container(
                        width: MediaQuery.of(context).size.width - 50.0,
                        height: 300.0,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0,top: 5.0,bottom: 5.0),
                              child: Text(
                                widget.players.firstName+" "+widget.players.lastName,
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 22.0,fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0),
                              child: Text(
                                "Age : " + widget.players.age.toString()+" | "+widget.players.birthdate,
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 18.0),
                              ),),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0),
                              child: Text(
                                "Height : " + widget.players.height.toString()+" cm",
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 18.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0),
                              child: Text(
                                "Position : " + widget.players.positionFull,
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 18.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0),
                              child: Text(
                                "Club : "+widget.players.club.name,
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 18.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8.0),
                              child: Text(
                                "League: "+widget.players.league.name,
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 18.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 40.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40.0,
                                    child: Text(
                                      widget.players.balance.toString(),
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 18.0),
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "curve",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40.0,
                                    child: Text(
                                      widget.players.strength.toString(),
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 18.0),
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "strength",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40.0,
                                    child: Text(
                                      widget.players.agility.toString(),
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 18.0),
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "agility",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40.0,
                                    child: Text(
                                      widget.players.dribbling.toString(),
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 18.0),
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "dribbling",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40.0,
                                    child: Text(
                                      widget.players.finishing.toString(),
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 18.0),
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "finishing",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 40.0,
                                    child: Text(
                                      widget.players.balance.toString(),
                                      style: TextStyle(
                                          color: Colors.blue[900],
                                          fontSize: 18.0),
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "balance",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontSize: 18.0),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          /*Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Club ",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 18.0),
                                ),
                                Image.network(
                                  widget.players.club.imageUrls.light.small,
                                  height: 80.0,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(8.0, 3.0, 8.0, 3.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "LEAGUE ",
                                  style: TextStyle(
                                      color: Colors.white60, fontSize: 18.0),
                                ),
                                Image.network(
                                  widget.players.league.imageUrls.light,
                                  height: 80.0,
                                ),
                              ],
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
