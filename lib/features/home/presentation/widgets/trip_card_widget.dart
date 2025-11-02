import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trips_task/core/theme/app_colors.dart';
import 'package:trips_task/core/theme/assets.dart';
import 'package:trips_task/features/home/domain/entitis/participant_entity.dart';

class TripCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String status;
  final Color statusColor;
  final String image;
  final List<ParticipantEntity> participants;
  final int unfinishedTasks;

  const TripCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.status,
    required this.statusColor,
    required this.image,
    required this.participants,
    required this.unfinishedTasks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: const Color(0xFF111111),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 16,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                image.isNotEmpty
                    ? image
                    : 'https://via.placeholder.com/640x360?text=No+Image',
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  Assets.tripImage2,
                  width: double.infinity,
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0.7),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 16,
                bottom: 16,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: statusColor),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff171717).withOpacity(0.6),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.more_horiz, color: Colors.white),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.calendarIcon,
                        width: 20,
                        height: 20,
                      ),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          subtitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.grey[900],
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      SizedBox(
                        height: 24,
                        width: 70,
                        child: Stack(
                          children: [
                            for (
                              int i = 0;
                              i < participants.length && i < 2;
                              i++
                            )
                              Positioned(
                                left: i * 20,
                                child: CircleAvatar(
                                  radius: 14,
                                  backgroundColor: Colors.white,
                                  backgroundImage: NetworkImage(
                                    participants[i].avatarUrl,
                                  ),
                                  onBackgroundImageError: (_, __) {
                                    // fallback avatar
                                  },
                                  child: const Icon(
                                    Icons.person,
                                    size: 14,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            if (participants.length > 2)
                              Positioned(
                                left: 40,
                                child: CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Colors.grey[850],
                                  child: Text(
                                    '+${participants.length - 2}',
                                    style: const TextStyle(
                                      color: AppColors.goldColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            if (participants.isEmpty)
                              const CircleAvatar(
                                radius: 12,
                                backgroundImage: AssetImage(Assets.tripImage2),
                              ),
                          ],
                        ),
                      ),

                      const Spacer(),
                      Text(
                        '$unfinishedTasks unfinished tasks',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
