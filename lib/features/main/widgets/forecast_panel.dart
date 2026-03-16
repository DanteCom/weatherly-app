import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:weathery/shared/gen/assets.gen.dart';
import 'package:weathery/shared/theme/app_text_styles.dart';
import 'package:weathery/features/main/widgets/bottom_bar/bottom_bar.dart';

class ForecastPanel extends StatelessWidget {
  const ForecastPanel({super.key});

  @override
  Widget build(BuildContext context) {
    const topRadius = BorderRadius.vertical(top: Radius.circular(45));
    final width = MediaQuery.sizeOf(context).width;
    return ClipRRect(
      borderRadius: topRadius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.center,
              end: Alignment.centerRight,
              colors: [Color(0x9A252946), Color(0xFF4F4C80)],
            ),
            borderRadius: topRadius,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Center(
                child: Container(
                  width: 48,
                  height: 5,
                  decoration: BoxDecoration(
                    color: const Color(0x30000000),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hourly Forecast',
                          style: AppTextStyles.s15w600(const Color(0x80EBEBF5)),
                        ),
                      ],
                    ),
                    Text(
                      'Weekly Forecast',
                      style: AppTextStyles.s15w600(const Color(0x80EBEBF5)),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 3),
              Container(
                height: 2,
                width: width / 2,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF465084),
                      Color(0xFFE19DEB),
                      Color(0xD459455C),
                    ],
                  ),
                ),
              ),
              const Divider(color: Color(0x30000000), thickness: 2, height: 2),
              const SizedBox(height: 20),
              SizedBox(
                height: 145,
                child: ListView.separated(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 12),
                  itemBuilder: (context, index) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.5,
                      vertical: 16,
                    ),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF282953), Color(0xFF483D6D)],
                      ),
                      borderRadius: BorderRadius.circular(35),
                      border: Border.all(
                        color: const Color(0xFF3C3E81),
                        width: 2,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '12 AM',
                          style: AppTextStyles.s15w600(Colors.white),
                        ),
                        Column(
                          children: [
                            Assets.images.moonCloudFastWind.image(
                              width: 32,
                              height: 32,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              '30%',
                              style: AppTextStyles.s13w600(
                                const Color(0xFF40CBD8),
                              ),
                            ),
                          ],
                        ),
                        Text('19°', style: AppTextStyles.s20w400(Colors.white)),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const MainBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
