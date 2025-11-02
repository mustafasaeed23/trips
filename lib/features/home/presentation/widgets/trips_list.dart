import 'package:flutter/material.dart';
import 'package:trips_task/core/theme/app_colors.dart';
import 'package:trips_task/features/home/domain/entitis/trip_entity.dart';
import 'package:trips_task/features/home/presentation/widgets/trip_card_widget.dart';

import '../../../../core/helpers/date_format.dart';

class TripsList extends StatelessWidget {
  final List<TripEntity> trips;

  const TripsList({super.key, required this.trips});

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = (MediaQuery.of(context).size.width ~/ 260).clamp(
      1,
      5,
    );

    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.85,
      ),
      itemCount: trips.length,
      itemBuilder: (context, index) {
        final trip = trips[index];

        return TripCardWidget(
          title: trip.title ?? '',
          subtitle: tripDateformat(trip.startDate, trip.endDate),
          status: trip.status ?? '',
          statusColor: _getStatusColor(trip.status),
          image: trip.coverImage ?? '',
          participants: trip.participants ?? [],
          unfinishedTasks: trip.unfinishedTasks ?? 0,
        );
      },
    );
  }

  Color _getStatusColor(String? status) {
    switch (status?.toLowerCase()) {
      case 'ready for travel':
        return Colors.blueAccent;
      case 'pending approval':
        return AppColors.goldColor;
      case 'proposal sent':
        return AppColors.greenColor;
      default:
        return Colors.grey;
    }
  }
}
