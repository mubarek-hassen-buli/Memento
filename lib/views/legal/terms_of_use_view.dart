import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:storypad/widgets/base_view/base_route.dart';

class TermsOfUseRoute extends BaseRoute {
  const TermsOfUseRoute();

  @override
  String get routeName => 'terms_of_use';

  @override
  Widget buildPage(BuildContext context) => const TermsOfUseView();
}

class TermsOfUseView extends StatelessWidget {
  const TermsOfUseView({super.key});

  static const String _markdownData = '''
**Last updated:** April 2026

Welcome to **Memento**. By using this app, you agree to these Terms of Use. Please read them carefully.

---

## 1. Use of Memento

Memento is a personal journaling and writing application that stores your entries locally on your device and optionally backs them up to cloud storage services you choose to connect (such as Google Drive, iCloud Drive, Dropbox, or Nextcloud/WebDAV).

* You may use Memento for your personal, non-commercial journaling and writing needs.
* You own all of the stories, notes, media, and content you create in Memento.
* You may not redistribute, resell, reverse-engineer, or use the Memento application itself to provide commercial services to others.

---

## 2. In-App Purchases & Add-ons

Memento offers optional paid features and add-ons (such as Memento Pro).

* All payments are processed securely by your platform's payment provider. Memento does not collect, process, or store your credit card or billing information.
* When you connect a backup account, an encrypted identifier of that account may be associated with your purchase record so you can restore your purchases across your devices.
* Refund requests are subject to the policies of the platform through which the purchase was made.

---

## 3. Your Content & Backups

* All entries, photos, videos, audio recordings, tags, and settings you create remain your personal property.
* Your data is stored locally on your device and, if enabled, in your own connected cloud storage accounts.
* Because we do not store your entries on our servers, we cannot access, read, recover, or delete your journal content for you. You are responsible for maintaining access to your device, your App Lock PIN, and your connected cloud backup accounts.

---

## 4. Disclaimer of Warranties

Memento is provided **"as is"** and **"as available"** without warranties of any kind, whether express or implied.

While we strive to make Memento reliable and secure, we cannot guarantee that the app or third-party cloud backup services will always be uninterrupted or error-free. We are not responsible for any data loss resulting from device damage, forgotten PINs, deleted cloud backups, or issues with third-party storage providers. We recommend keeping regular backups of your important entries.

---

## 5. Changes to These Terms

We may update these Terms of Use from time to time. Updated terms will be available on this page inside the app. Your continued use of Memento after any changes take effect constitutes your acceptance of the revised terms.
''';

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.of(context);
    final TextTheme textTheme = TextTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(tr('general.term_of_use')),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: 16.0,
          bottom: 32.0 + MediaQuery.paddingOf(context).bottom,
          left: 16.0 + MediaQuery.paddingOf(context).left,
          right: 16.0 + MediaQuery.paddingOf(context).right,
        ),
        child: MarkdownBody(
          data: _markdownData,
          listItemCrossAxisAlignment: MarkdownListItemCrossAxisAlignment.start,
          styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
            h2Padding: const EdgeInsets.only(top: 16.0, bottom: 4.0),
            p: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
              height: 1.5,
            ),
            listBullet: textTheme.bodyMedium?.copyWith(
              color: colorScheme.onSurface,
            ),
            horizontalRuleDecoration: BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Theme.of(context).dividerColor,
                  width: 1.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

