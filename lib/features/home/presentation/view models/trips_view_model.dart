import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:trips_task/features/home/domain/entitis/trip_entity.dart';
import 'package:trips_task/features/home/domain/usecases/get_trips_use_case.dart';

class TripsViewModel extends StateNotifier<AsyncValue<List<TripEntity>>> {
  final GetTripsUseCase _getTripsUseCase;

  TripsViewModel(this._getTripsUseCase) : super(const AsyncValue.loading()) {
    getTrips();
  }
  Future<void> getTrips() async {
    state = const AsyncValue.loading();
    final result = await _getTripsUseCase();
    result.fold(
      (failure) =>
          state = AsyncValue.error(failure.message, StackTrace.current),
      (data) => state = AsyncValue.data(data),
    );
  }
}
