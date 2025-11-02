import 'participant_entity.dart';

class TripEntity {
  final String id;
  final String title;
  final String status;
  final String startDate;
  final String endDate;
  final int unfinishedTasks;
  final String coverImage;
  final List<ParticipantEntity> participants;

  const TripEntity({
    required this.id,
    required this.title,
    required this.status,
    required this.startDate,
    required this.endDate,
    required this.unfinishedTasks,
    required this.coverImage,
    required this.participants,
  });
}
