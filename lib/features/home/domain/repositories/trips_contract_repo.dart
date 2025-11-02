import 'package:dartz/dartz.dart';
import 'package:trips_task/core/errors/expections.dart';
import 'package:trips_task/features/home/domain/entitis/trip_entity.dart';

abstract class TripsContractRepo {
  Future<Either<AppException, List<TripEntity>>> getTrips();
}
