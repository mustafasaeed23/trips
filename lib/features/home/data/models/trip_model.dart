import '../../domain/entitis/trip_entity.dart';
import 'participant_model.dart';

class TripModel extends TripEntity {
  TripModel({
    required super.id,
    required super.title,
    required super.status,
    required super.startDate,
    required super.endDate,
    required super.unfinishedTasks,
    required super.coverImage,
    required super.participants,
  });

  factory TripModel.fromJson(Map<String, dynamic> json) {
    return TripModel(
      id: json['id'] ?? '',
      title: json['title'] ?? '',
      status: json['status'] ?? '',
      startDate: json['dates']?['start'] ?? '',
      endDate: json['dates']?['end'] ?? '',
      unfinishedTasks: json['unfinished_tasks'] ?? 0,
      coverImage: json['cover_image'] ?? '',
      participants: (json['participants'] as List)
          .map((p) => ParticipantModel.fromJson(p))
          .toList(),
    );
  }
}
