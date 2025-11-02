import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:trips_task/features/home/data/datasources/local/trips_local_data_source.dart';
import 'package:trips_task/features/home/data/datasources/local/trips_api_local_data_source.dart';
import 'package:trips_task/features/home/data/repositories/trips_imply_repo.dart';
import 'package:trips_task/features/home/domain/usecases/get_trips_use_case.dart';
import 'package:trips_task/features/home/domain/entitis/trip_entity.dart';

import '../view models/trips_view_model.dart';

final localTripsDataSourceProvider = Provider<TripsLocalDataSource>(
  (ref) => TripsApiLocalDataSource(),
);

final tripsRepositoryProvider = Provider<TripsImplyRepo>(
  (ref) => TripsImplyRepo(ref.read(localTripsDataSourceProvider)),
);

final getTripsUseCaseProvider = Provider<GetTripsUseCase>(
  (ref) => GetTripsUseCase(ref.read(tripsRepositoryProvider)),
);

final tripsViewModelProvider =
    StateNotifierProvider<TripsViewModel, AsyncValue<List<TripEntity>>>(
      (ref) => TripsViewModel(ref.read(getTripsUseCaseProvider)),
    );
