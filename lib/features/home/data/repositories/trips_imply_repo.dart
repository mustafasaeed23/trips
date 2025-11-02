import 'package:dartz/dartz.dart';
import 'package:trips_task/core/errors/expections.dart';
import 'package:trips_task/features/home/data/datasources/local/trips_local_data_source.dart';
import 'package:trips_task/features/home/domain/entitis/trip_entity.dart';
import 'package:trips_task/features/home/domain/repositories/trips_contract_repo.dart';

class TripsImplyRepo implements TripsContractRepo {
  final TripsLocalDataSource tripsLocalDataSource;

  TripsImplyRepo(this.tripsLocalDataSource);

  @override
  Future<Either<AppException, List<TripEntity>>> getTrips() async {
    try {
      final trips = await tripsLocalDataSource.getTripsFromLocal();
      return Right(trips);
    } on AppException catch (e) {
      return Left(e);
    } catch (e) {
      return Left(LocalException('Unexpected error: $e'));
    }
  }
}
