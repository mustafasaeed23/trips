import 'package:dartz/dartz.dart';
import 'package:trips_task/core/errors/expections.dart';
import 'package:trips_task/features/home/domain/entitis/trip_entity.dart';
import 'package:trips_task/features/home/domain/repositories/trips_contract_repo.dart';

class GetTripsUseCase {
  final TripsContractRepo tripsContractRepo;
  GetTripsUseCase(this.tripsContractRepo);

  Future<Either<AppException, List<TripEntity>>> call() async {
    return await tripsContractRepo.getTrips();
  }
}
