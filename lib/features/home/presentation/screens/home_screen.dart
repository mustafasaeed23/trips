import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trips_task/features/home/presentation/providers/trips_providers.dart';
import 'package:trips_task/features/home/presentation/widgets/trips_list.dart';
import 'package:trips_task/features/home/presentation/widgets/items_widget.dart';
import 'package:trips_task/features/home/presentation/widgets/nav_bar_widget.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tripsState = ref.watch(tripsViewModelProvider);

    return Scaffold(
      body: tripsState.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, _) => Center(child: Text('Error: $error')),
        data: (trips) => SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WebNavbar(),
              const SizedBox(height: 20),
              const ItemsWidget(),
              const SizedBox(height: 20),
              TripsList(trips: trips),
            ],
          ),
        ),
      ),
    );
  }
}
