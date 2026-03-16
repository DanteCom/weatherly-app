import 'package:flutter/material.dart';
import 'package:weathery/shared/gen/assets.gen.dart';
import 'package:weathery/shared/theme/app_text_styles.dart';
import 'package:weathery/features/main/widgets/forecast_panel.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Assets.images.starrySkyBg.image(fit: BoxFit.cover),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Montreal', style: AppTextStyles.s34w400(Colors.white)),
                Text(
                  '19°',
                  style: AppTextStyles.s96w100(
                    Colors.white,
                  ).copyWith(height: 1),
                ),
                Text(
                  'Mostly Clear',
                  style: AppTextStyles.s20w600(const Color(0x80EBEBF5)),
                ),
                Text(
                  'H:24°  L:18°',
                  style: AppTextStyles.s20w600(Colors.white),
                ),
                Assets.images.house.image(),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.bottomCenter,
            child: ForecastPanel(),
          ),
        ],
      ),
    );
  }
}
