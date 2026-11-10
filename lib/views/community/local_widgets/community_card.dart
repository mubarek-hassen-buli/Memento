part of '../community_view.dart';

class _CommunityCard extends StatelessWidget {
  const _CommunityCard();

  @override
  Widget build(BuildContext context) {
    final List<Widget> socials = [
      IconButton.filledTonal(
        tooltip: 'LinkedIn',
        icon: const Icon(SpIcons.linkedin),
        onPressed: () => UrlOpenerService.openInCustomTab(
          context,
          'https://www.linkedin.com/in/mubarek-hassen-bul',
        ),
      ),
      IconButton.filledTonal(
        tooltip: 'X (Twitter)',
        icon: const Icon(SpIcons.twitter),
        onPressed: () => UrlOpenerService.openInCustomTab(
          context,
          'https://x.com/mubarek_hb',
        ),
      ),
      IconButton.filledTonal(
        tooltip: 'Instagram',
        icon: const Icon(SpIcons.instagram),
        onPressed: () => UrlOpenerService.openInCustomTab(
          context,
          'https://www.instagram.com/focustillrich1',
        ),
      ),
      IconButton.filledTonal(
        tooltip: 'Telegram',
        icon: const Icon(SpIcons.telegram),
        onPressed: () => UrlOpenerService.openInCustomTab(
          context,
          'https://t.me/mubarek_h',
        ),
      ),
    ];

    return Container(
      margin: const EdgeInsets.all(16.0).copyWith(bottom: 8.0, top: 8.0),
      padding: const EdgeInsets.all(16.0).copyWith(bottom: 12.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Theme.of(context).dividerColor),
      ),
      child: Column(
        spacing: 12.0,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tr('general.reach_us_description')),
          Container(
            transform: Matrix4.identity()..spTranslate(-4.0, 0.0),
            child: Wrap(
              spacing: Platform.isMacOS ? 8.0 : 0.0,
              runSpacing: Platform.isMacOS ? 8.0 : 0.0,
              children: [
                const SizedBox(height: 48.0),
                ...List.generate(socials.length, (index) {
                  return SpFadeIn.fromBottom(
                    delay: Durations.medium1 * (index + 1) * 0.5,
                    duration: Durations.medium4,
                    child: socials[index],
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
