import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:weathery/shared/gen/assets.gen.dart';
import 'package:weathery/shared/widgets/neumorphic_button.dart';
import 'package:weathery/features/main/widgets/bottom_bar/bottom_bar_painter.dart';
import 'package:weathery/features/main/widgets/bottom_bar/bottom_bar_center_painter.dart';

class MainBottomBar extends StatelessWidget {
  const MainBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return SizedBox(
      height: 100,
      child: Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(
            painter: BottomBarPainter(),
            size: Size.fromWidth(width),
            child: Row(
              children: [
                Expanded(
                  child: CupertinoButton(
                    onPressed: () {},
                    alignment: Alignment.center,
                    padding: EdgeInsets.zero,
                    child: Center(
                      child: Assets.svgs.location.svg(color: Colors.white),
                    ),
                  ),
                ),
                const Spacer(),
                Expanded(
                  child: CupertinoButton(
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                    child: Center(
                      child: Assets.svgs.list.svg(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 100,
              width: width * .6,
              child: CustomPaint(
                painter: BottomBarCenterPainter(),
                child: const Center(
                  child: NeumorphicCircleButton(
                    icon: Icon(
                      size: 35,
                      Icons.add_rounded,
                      color: Color(0xFF48319D),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
