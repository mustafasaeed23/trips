import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:trips_task/core/theme/assets.dart';

class WebNavbar extends StatefulWidget {
  const WebNavbar({super.key});

  @override
  State<WebNavbar> createState() => _WebNavbarState();
}

class _WebNavbarState extends State<WebNavbar> {
  int activeIndex = 0;
  final List<String> tabs = ['Items', 'Pricing', 'Info', 'Tasks', 'Analytics'];
  final List<GlobalKey> tabKeys = [];
  double indicatorLeft = 0;
  double indicatorWidth = 0;

  @override
  void initState() {
    super.initState();
    tabKeys.addAll(List.generate(tabs.length, (_) => GlobalKey()));
    WidgetsBinding.instance.addPostFrameCallback((_) => _updateIndicator());
  }

  void _updateIndicator() {
    final key = tabKeys[activeIndex];
    final ctx = key.currentContext;
    if (ctx != null) {
      final box = ctx.findRenderObject() as RenderBox;
      final position = box.localToGlobal(
        Offset.zero,
        ancestor: context.findRenderObject(),
      );
      final left = position.dx - 40; 
      setState(() {
        indicatorLeft = left;
        indicatorWidth = box.size.width;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Image.asset(Assets.logo, height: 40),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: List.generate(
                  tabs.length,
                  (index) => GestureDetector(
                    key: tabKeys[index],
                    onTap: () {
                      setState(() => activeIndex = index);
                      WidgetsBinding.instance.addPostFrameCallback(
                        (_) => _updateIndicator(),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        tabs[index],
                        style: TextStyle(
                          color: activeIndex == index
                              ? Colors.white
                              : Colors.white70,
                          fontWeight: activeIndex == index
                              ? FontWeight.w600
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 40),
              SvgPicture.asset(Assets.settingsIcon, color: Colors.white),
              const SizedBox(width: 20),
              SvgPicture.asset(Assets.notificationsIcon, color: Colors.white),
              const SizedBox(width: 20),
              const CircleAvatar(
                backgroundImage: AssetImage(Assets.profileImage),
                radius: 14,
              ),
              const SizedBox(width: 8),
              const Text('John Doe', style: TextStyle(color: Colors.white)),
              SizedBox(width: 10),
              SvgPicture.asset(
                Assets.arrowDownIcon,
                color: Colors.white,
                width: 16,
                height: 16,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Stack(
            alignment: Alignment.centerLeft,
            children: [
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey.shade800,
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                left: indicatorLeft,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  height: 2,
                  width: indicatorWidth,
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
