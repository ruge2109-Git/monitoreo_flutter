import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'usuario_event.dart';
part 'usuario_state.dart';

class UsuarioBloc extends Bloc<UsuarioEvent, UsuarioState> {
  UsuarioBloc() : super(UsuarioInitial());

  @override
  Stream<UsuarioState> mapEventToState(
    UsuarioEvent event,
  ) async* {
  }
}
