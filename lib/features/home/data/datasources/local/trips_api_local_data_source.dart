import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:trips_task/core/api/api_constants.dart';
import 'package:trips_task/core/errors/expections.dart';
import 'package:trips_task/features/home/data/datasources/local/trips_local_data_source.dart';
import 'package:trips_task/features/home/data/models/trip_model.dart';

class TripsApiLocalDataSource implements TripsLocalDataSource {
  @override
  Future<List<TripModel>> getTripsFromLocal() async {
    try {
      final jsonString = await rootBundle.loadString(
        ApiConstants.assetsBaseUrl,
      );
      final data = json.decode(jsonString);
      final trips = (data['trips'] as List)
          .map((e) => TripModel.fromJson(e))
          .toList();
      return trips;
    } catch (e) {
      throw LocalException('Failed to load local trips data: $e');
    }
  }
}
