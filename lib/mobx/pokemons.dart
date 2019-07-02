import 'package:mobx/mobx.dart';

import 'package:pokemonmobx/config/config.dart';
import 'package:pokemonmobx/models/pokemon.dart';
import 'package:pokemonmobx/models/pokemons.dart';
import 'package:pokemonmobx/services/api.dart';

part 'pokemons.g.dart';

class PokemonList = _PokemonList with _$PokemonList;

abstract class _PokemonList with Store {
  @observable
  Pokemons pokemons = Pokemons();

  @observable
  bool status = false;

  @observable
  bool condition = false;

  @action
  setLoading(bool val) {
    status = val;
  }

  @observable
  Pokemon pokemon = Pokemon();

  @action
  getPokemons() async {
    pokemons = Pokemons.fromJson(await Api.getRequest(config["BASE_URL"]));
    print(pokemons.results.length);

    setLoading(true);
  }

  @action
  setloading(bool val) {
    print("got the data");
    condition = val;
  }

  @action
  getPokemon(url) async {
    pokemon = Pokemon.fromJson(await Api.getRequest(url));
    print(pokemon.name);
    setloading(true);
  }
}
