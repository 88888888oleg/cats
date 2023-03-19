import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:cats/config/urls/api_path.dart';
import 'package:cats/features/cat_page/repository/find_cats_repository.dart';
import 'package:cats/features/history_page/repository/history_repository.dart';
import 'package:cats/lang/gen/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'find_cats_event.dart';
part 'find_cats_state.dart';
part 'find_cats_bloc.freezed.dart';

class FindCatsBloc extends Bloc<FindCatsEvent, FindCatsState> {
  FindCatsBloc({
    required final FindCatsRepository findCatsRepository,
    required final HistoryRepository historyRepository,
  })  : _findCatsRepository = findCatsRepository,
        _historyRepository = historyRepository,
        super(const FindCatsState.loading()) {
    on<FindCatsEvent>(
      (event, emitter) => event.map<Future<void>>(
        addSearch: (event) => _addSearch(event, emitter),
        init: (event) => _init(event, emitter),
      ),
      transformer: droppable(),
    );
  }

  static const String catsPicturesUrl = ApiPath.catsPicturesUrl;
  final FindCatsRepository _findCatsRepository;
  final HistoryRepository _historyRepository;

  Future<void> _init(
    _FindCatsEventInit event,
    Emitter<FindCatsState> emitter,
  ) async {
    /// Heroku needs to warm up.
    unawaited(
      _findCatsRepository.findFact(),
    );
    emitter(
      FindCatsState.loaded(
        fact: LocaleKeys.start_text.tr(),
        photoUrl: catsPicturesUrl,
      ),
    );
  }

  Future<void> _addSearch(
    _FindCatsEventAddSearch event,
    Emitter<FindCatsState> emitter,
  ) async {
    emitter(
      const FindCatsState.loading(),
    );

    final either = await _findCatsRepository.findFact();

    await either.fold(
      (left) async {
        emitter(
          FindCatsState.error(
            left,
          ),
        );
      },
      (right) async {
        _historyRepository.addFact(right.fact);

        emitter(
          FindCatsState.loaded(
            fact: right.fact,
            photoUrl: '$catsPicturesUrl?${right.length}',
          ),
        );
      },
    );
  }
}
