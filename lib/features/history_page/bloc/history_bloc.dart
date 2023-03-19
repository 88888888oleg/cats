import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cats/config/urls/api_path.dart';
import 'package:cats/features/history_page/repository/history_repository.dart';
import 'package:cats/features/history_page/storage/adaptors/history_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_event.dart';
part 'history_state.dart';
part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc({required final HistoryRepository historyRepository})
      : _historyRepository = historyRepository,
        super(const HistoryState.loading()) {
    on<HistoryEvent>(
      (event, emitter) => event.map<Future<void>>(
        deleteData: (event) => _deleteData(event, emitter),
        init: (event) => _init(event, emitter),
      ),
      transformer: droppable(),
    );
  }

  static const String catsPicturesUrl = ApiPath.catsPicturesUrl;
  final HistoryRepository _historyRepository;

  Future<void> _init(
    _HistoryEventInit event,
    Emitter<HistoryState> emitter,
  ) async {
    emitter(
      const HistoryState.loading(),
    );

    final either = await _historyRepository.fetchFact();

    await either.fold(
      (left) async {
        emitter(
          HistoryState.error(
            left,
          ),
        );
      },
      (right) async {
        emitter(
          HistoryState.loaded(
            historyFacts: right,
          ),
        );
      },
    );
  }

  Future<void> _deleteData(
    _HistoryEventDeleteData event,
    Emitter<HistoryState> emitter,
  ) async {
    final either = await _historyRepository.deleteFacts();

    await either.fold(
      (left) async {
        emitter(
          HistoryState.error(
            left,
          ),
        );
      },
      (right) async {
        emitter(
          const HistoryState.loaded(
            historyFacts: [],
          ),
        );
      },
    );
  }
}
