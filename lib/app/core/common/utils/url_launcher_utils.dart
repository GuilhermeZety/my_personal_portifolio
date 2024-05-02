// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vibrate/flutter_vibrate.dart';
import 'package:gap/gap.dart';
import 'package:my_personal_portifolio/app/core/common/extensions/widget_extension.dart';
import 'package:my_personal_portifolio/app/core/common/utils/custom_dialog_utils.dart';
import 'package:my_personal_portifolio/app/core/common/utils/toasting.dart';
import 'package:my_personal_portifolio/app/core/common/utils/vibrate.dart';
import 'package:my_personal_portifolio/app/ui/components/button.dart';
import 'package:my_personal_portifolio/app/ui/custom_dialog.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherUtils {
  static void to(BuildContext context, String url, String? objetivo, {bool isLogged = true}) async {
    vibrate(FeedbackType.light);

    final success = await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    if (!success) {
      Toasting.error(context, title: 'Não foi possível abrir o ${objetivo ?? 'Link'}');
    }
  }

  static void open(BuildContext context, String linkApp, String linkWeb, String identification) async {
    //  var link = this.link;
    // if (type == SocialMediaType.whatsapp) {
    //   link = '';
    // }
    try {
      var resp = await launchUrl(
        Uri.parse(linkApp),
        mode: LaunchMode.externalApplication,
      );
      if (!resp) {
        DontHaveAppModal(
          title: identification,
          url: linkWeb,
        ).show(context);
      }
    } on PlatformException {
      await DontHaveAppModal(
        title: identification,
        url: linkWeb,
      ).show(context);
    } catch (err) {
      Toasting.error(context, title: 'Não foi possível abrir o $identification');
    }
  }
}

class DontHaveAppModal {
  const DontHaveAppModal({
    required this.url,
    required this.title,
  });

  final String url;
  final String title;

  Future show(
    BuildContext context,
  ) async {
    return showCustomDialog(
      context,
      child: CustomDialog(
        top: Text(
          'Você não tem o ${title.toUpperCase()} instalado!',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        bottom: Column(
          children: [
            Button.secundary(
              onPressed: () async => Navigator.of(context).pop(),
              bordered: true,
              child: const Text('Agora Não'),
            ).expandedH(),
            const Gap(10),
            Button(
              onPressed: () async => launchUrl(
                Uri.parse(url),
                mode: LaunchMode.inAppBrowserView,
              ),
              child: const Text('ACESSAR'),
            ).expandedH(),
          ],
        ),
        child: Text(
          'Deseja acessar o ${title.toUpperCase()} no navegador?',
          textAlign: TextAlign.center,
        ).p(20),
      ),
    );
  }
}
