import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:gif_view/gif_view.dart';
import 'package:my_personal_portifolio/app/core/common/extensions/widget_extension.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GifView.asset(
              'assets/gifs/spinning_cat.gif',
              height: 120,
              width: 120,
              frameRate: 36,
            ).hero('spinning_cat'),
            const Gap(10),
            AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                TyperAnimatedText('Carregando...', speed: 80.ms),
              ],
            ),
          ],
        ).animate().fade(duration: 1.seconds),
      ),
    );
  }
}
