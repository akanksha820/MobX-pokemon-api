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

  final _$getPokemonsAsyncAction = AsyncAction('getPokemons');

  @override
  Future getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  final _$_PokemonListActionController = ActionController(name: '_PokemonList');

  @override
  dynamic setLoading(dynamic bool) {
    final _$actionInfo = _$_PokemonListActionController.startAction();
    try {
      return super.setLoading(bool);
    } finally {
      _$_PokemonListActionController.endAction(_$actionInfo);
    }
  }
}
