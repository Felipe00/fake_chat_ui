import 'package:fake_chat_ui/core/enums/request_state.dart';
import 'package:fake_chat_ui/core/styles/app/text_styles.dart';
import 'package:fake_chat_ui/core/styles/chat_colors.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/components/avatar.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/components/item_blog_layout.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

class FeedPage extends StatelessWidget {
  static const routeName = '/home/feed/';
  FeedPage({Key? key}) : super(key: key);

  final FeedController _controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    _controller.fetchData();
    _controller.fetchStoriesData();
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
            SizedBox(height: 60.0, child: _stories()),
            const SizedBox(
              height: 32.0,
            ),
            _titleLatestBlogs(),
            const SizedBox(
              height: 8.0,
            ),
            Expanded(child: RxBuilder(builder: (_) => _latestBlogsList()))
          ],
        ),
      );

  Widget _stories() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAvatar(isAddAvatar: true),
          Expanded(child: RxBuilder(builder: (_) => _listStories()))
        ],
      );

  Widget _listStories() => ListView.builder(
      itemCount: _controller.storiesList.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CustomAvatar(
            isAddAvatar: false,
            urlImage: _controller.storiesList[index].picture.medium);
      });

  Widget _titleLatestBlogs() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Latest blogs', style: AppTextStyles.titleEmphasis),
          const Icon(Icons.filter_alt, color: AppColors.primary)
        ],
      );

  Widget _latestBlogsList() =>
      _controller.stateFetchFeed.value == RequestState.LOADING
          ? const Center(child: CircularProgressIndicator())
          : _listWidget();

  Widget _listWidget() => _controller.feedList.isEmpty
      ? const Center(child: Text('No news today ;)'))
      : ListView.builder(
          itemCount: _controller.feedList.length,
          itemBuilder: (context, index) {
            return ItemBlogLayout(model: _controller.feedList[index]);
          });
}
