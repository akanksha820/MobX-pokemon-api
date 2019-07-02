import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokemonmobx/mobx/pokemons.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokemonmobx/screens/Pokemon/show_pokemon.dart';

class Home extends StatefulWidget {
  @override
  MyHomeState createState() {
    return MyHomeState();
  }
}

class MyHomeState extends State<Home> {
  final poke = PokemonList();
  @override
  void initState() {
    super.initState();
    poke.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pokemon MobX"),
          backgroundColor: Colors.redAccent,
        ),
        body: Container(
            child: Observer(
          builder: (_) => poke.status
              ? ListView.builder(
                  shrinkWrap: true,
                  itemCount: poke.pokemons.results.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                        elevation: 4,
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Text(poke.pokemons.results[index].name),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ShowPokemon(url : poke.pokemons.results[index].url)),
                                  );
                                },
                                child: Text("Know More"),
                              )
                            ],
                          ),
                        ));
                  },
                )
              : CircularProgressIndicator(),
        )));
  }
}
