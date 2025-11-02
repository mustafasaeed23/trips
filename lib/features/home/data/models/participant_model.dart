import '../../domain/entitis/participant_entity.dart';

class ParticipantModel extends ParticipantEntity {
  ParticipantModel({
    required super.name,
    required super.avatarUrl,
  });

  factory ParticipantModel.fromJson(Map<String, dynamic> json) {
    return ParticipantModel(
      name: json['name'] ?? '',
      avatarUrl: json['avatar_url'] ?? '',
    );
  }
}