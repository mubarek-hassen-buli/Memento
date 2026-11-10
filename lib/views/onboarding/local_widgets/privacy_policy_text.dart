part of 'onboarding_template.dart';

class _PrivacyPolicyText extends StatelessWidget {
  const _PrivacyPolicyText({
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return SpTapEffect(
      onTap: () => const PrivacyPolicyRoute().push(context),
      child: Text(
        tr("general.read_our_privacy_policy"),
        style: TextTheme.of(context).bodyMedium?.copyWith(
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
