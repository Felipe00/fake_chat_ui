import 'package:fake_chat_ui/core/styles/app/text_styles.dart';
import 'package:fake_chat_ui/core/styles/chat_colors.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/components/avatar.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedPage extends StatelessWidget {
  static const routeName = 'feed/';
  FeedPage({Key? key}) : super(key: key);

  final FeedController _controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: _body()));
  }

  Widget _body() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 24.0,
            ),
            Text('Moments', style: AppTextStyles.titleEmphasis),
            const SizedBox(
              height: 16.0,
            ),
            _stories(),
            const SizedBox(
              height: 32.0,
            ),
            _titleLatestBlogs(),
            _latestBlogs()
          ],
        ),
      );

  Widget _stories() => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomAvatar(isAddAvatar: true),
            CustomAvatar(isAddAvatar: false),
            CustomAvatar(isAddAvatar: false),
            CustomAvatar(isAddAvatar: false),
            CustomAvatar(isAddAvatar: false),
            CustomAvatar(isAddAvatar: false),
            CustomAvatar(isAddAvatar: false),
          ],
        ),
      );

  Widget _titleLatestBlogs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Latest blogs', style: AppTextStyles.titleEmphasis),
          const Icon(Icons.filter_alt, color: AppColors.primary)
        ],
      );

  Widget _latestBlogs() => Container();
}
