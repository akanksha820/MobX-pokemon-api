import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokemonmobx/mobx/pokemons.dart';
import 'package:pokemonmobx/screens/Home/index.dart';

class ShowPokemon extends StatefulWidget {
  final String url;
  ShowPokemon({this.url});
  @override
  MyShowPokemon createState() {
    return MyShowPokemon();
  }
}

class MyShowPokemon extends State<ShowPokemon> {
  final poke = PokemonList();
  @override
  void initState() {
    super.initState();
    poke.getPokemon(widget.url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Pokemon MobX"),
      ),
      body: Observer(
        builder: (_) => Container(
            child: poke.condition
                ? Text(poke.pokemon.name)
                : Text("Still loading !")),
      ),
    );
  }
}
