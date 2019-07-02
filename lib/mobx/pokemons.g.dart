// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemons.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars

mixin _$PokemonList on _PokemonList, Store {
  final _$pokemonsAtom = Atom(name: '_PokemonList.pokemons');

  @override
  Pokemons get pokemons {
    _$pokemonsAtom.context.enforceReadPolicy(_$pokemonsAtom);
    _$pokemonsAtom.reportObserved();
    return super.pokemons;
  }

  @override
  set pokemons(Pokemons value) {
    _$pokemonsAtom.context.conditionallyRunInAction(() {
      super.pokemons = value;
      _$pokemonsAtom.reportChanged();
    }, _$pokemonsAtom, name: '${_$pokemonsAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_PokemonList.status');

  @override
  bool get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(bool value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$conditionAtom = Atom(name: '_PokemonList.condition');

  @override
  bool get condition {
    _$conditionAtom.context.enforceReadPolicy(_$conditionAtom);
    _$conditionAtom.reportObserved();
    return super.condition;
  }

  @override
  set condition(bool value) {
    _$conditionAtom.context.conditionallyRunInAction(() {
      super.condition = value;
      _$conditionAtom.reportChanged();
    }, _$conditionAtom, name: '${_$conditionAtom.name}_set');
  }

  final _$pokemonAtom = Atom(name: '_PokemonList.pokemon');

  @override
  Pokemon get pokemon {
    _$pokemonAtom.context.enforceReadPolicy(_$pokemonAtom);
    _$pokemonAtom.reportObserved();
    return super.pokemon;
  }

  @override
  set pokemon(Pokemon value) {
    _$pokemonAtom.context.conditionallyRunInAction(() {
      super.pokemon = value;
      _$pokemonAtom.reportChanged();
    }, _$pokemonAtom, name: '${_$pokemonAtom.name}_set');
  }

  final _$getPokemonsAsyncAction = AsyncAction('getPokemons');

  @override
  Future getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  final _$getPokemonAsyncAction = AsyncAction('getPokemon');

  @override
  Future getPokemon(dynamic url) {
    return _$getPokemonAsyncAction.run(() => super.getPokemon(url));
  }

  final _$_PokemonListActionController = ActionController(name: '_PokemonList');

  @override
  dynamic setLoading(bool val) {
    final _$actionInfo = _$_PokemonListActionController.startAction();
    try {
      return super.setLoading(val);
    } finally {
      _$_PokemonListActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setConditionStatus(bool val) {
    final _$actionInfo = _$_PokemonListActionController.startAction();
    try {
      return super.setConditionStatus(val);
    } finally {
      _$_PokemonListActionController.endAction(_$actionInfo);
    }
  }
}
