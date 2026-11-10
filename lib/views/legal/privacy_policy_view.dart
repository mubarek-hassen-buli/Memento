import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown_plus/flutter_markdown_plus.dart';
import 'package:storypad/widgets/base_view/base_route.dart';

class PrivacyPolicyRoute extends BaseRoute {
  const PrivacyPolicyRoute();

  @override
  String get routeName => 'privacy_policy';

  @override
  Widget buildPage(BuildContext context) => const PrivacyPolicyView();
}

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});

  static const String _markdownData = '''
**Last updated:** April 2026

Your privacy is important to us. This Privacy Policy explains what information **Memento** collects, how it is used, and the choices you have.

---

## 1. Information We Collect

We do **not** store your personal data on our servers. Memento has no account system—you do not register with us to use the app.

The app handles the following information:

* **Your Content (Entries, Media & Preferences):** Your stories, feelings, tags, people, places, photos, videos, voice recordings, and templates are stored locally on your device. If you enable Cloud Backup, your content is sent directly from your device to the cloud storage service you choose.
* **Nickname:** If you provide a nickname, it is stored locally on your device and included in your own cloud backups. We do not receive it.
* **Backup Service Account Info:** When you connect a cloud backup service (such as Google Drive, iCloud Drive, Dropbox, or Nextcloud/WebDAV), your device receives basic profile information (such as your display name or email address) from that provider to show which account is connected and to link optional in-app purchases for restoration across devices.
* **Anonymous Analytics & Crash Reports:** We use Firebase Analytics and Firebase Crashlytics to collect anonymous usage events and crash reports so we can fix bugs and improve stability.
* **Template Usage Counts:** When you use a gallery template, the app records an anonymous count so we know which templates are helpful.

---

## 2. How We Use Your Information

We use the information described above solely to:

* Let you write, organize, and manage your entries, media, tags, and templates on your device.
* Back up and sync your data directly with the cloud storage service(s) you connect.
* Display your nickname inside the app.
* Restore optional in-app purchases across your devices.
* Understand which features are used and diagnose crashes to improve the app.

---

## 3. Backup Services

Memento can back up your entries and media to one or more cloud storage services that you choose to connect. In all cases, your device communicates **directly** with the provider—backup files never pass through our servers:

* **Google Drive:** Stored in a private `appDataFolder` inside your Google Drive, accessible only by the app when signed in with your Google account.
* **iCloud Drive:** Stored in your personal iCloud container managed by Apple.
* **Dropbox:** Stored in an app-scoped folder (`Apps/Memento`) inside your Dropbox account.
* **Nextcloud / WebDAV:** Stored on the self-hosted or third-party WebDAV server you configure. Your server URL, username, and app password are stored in your device's encrypted secure storage and are only sent directly to your server.

---

## 4. Anonymous Analytics

We intentionally avoid collecting anything personal in analytics:

* **Never collected:** Your story text or titles, search queries, tag names, people names, location names or GPS coordinates, links you open, or your name/email.
* **Collected anonymously:** Screen views, feature usage counts (e.g., adding a photo or playing a relaxing sound), app preferences (theme mode, font family, language), and crash stack traces with device model and OS version.
* **No Advertising ID:** Memento contains no ads and does not use advertising identifiers for tracking or profiling.

---

## 5. Other Services the App Connects To

Depending on the features you use, your device may make direct requests to:

* **Asset CDN:** Downloads optional background illustrations, relaxing sound audio tracks, and gallery templates on demand.
* **Google Fonts:** Downloads font files when you preview or select a custom font.
* **Map & Geocoding Providers (Google Maps, MapTiler, or System Geocoder):** Used only when you view a map or attach a location to an entry. Location access is optional and only requested when you use location features.

---

## 6. We Don't Sell Your Data

We do not sell, rent, or trade your personal information with any third parties. Memento has no advertisements and no third-party ad networks.

---

## 7. Data Security

* Your entries and media are stored locally on your device.
* All communication with cloud backup providers and external services uses encrypted HTTPS connections.
* You can protect access to your journal on your device using **App Lock** (PIN code, fingerprint, or face unlock).

---

## 8. Children's Privacy

Memento is not directed to children under the age of 13, and we do not knowingly collect personal information from children.

---

## 9. Your Rights and Choices

You have full control over your data at all times:

* **Edit or Delete Entries:** You can edit, move to bin, or permanently delete any story, photo, video, voice note, or tag directly inside the app.
* **Manage Backups:** You can disconnect any cloud backup service or delete backup files from your cloud storage account at any time.
* **Export Your Data:** You can export your stories and media at any time in JSON, Markdown, Plain Text, CSV, or PDF formats.
* **Device Permissions:** You can revoke camera, microphone, photo library, location, or notification permissions at any time in your device settings.

---

## 10. Changes to This Policy

We may update this Privacy Policy from time to time. Any updates will be reflected on this page inside the app with an updated revision date.
''';

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.of(context);
    final TextTheme textTheme = TextTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(tr('general.privacy_policy')),
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

