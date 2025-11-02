import 'package:dartz/dartz.dart';
import 'package:trips_task/features/home/data/models/trip_model.dart';

abstract class TripsLocalDataSource {
  Future<List<TripModel>> getTripsFromLocal();
}
