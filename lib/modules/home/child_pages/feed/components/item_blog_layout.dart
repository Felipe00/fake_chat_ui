import 'package:fake_chat_ui/core/config/const.dart';
import 'package:fake_chat_ui/core/models/user_data_model.dart';
import 'package:fake_chat_ui/core/styles/app/colors.dart';
import 'package:fake_chat_ui/core/styles/app/text_styles.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/components/avatar_blog.dart';
import 'package:flutter/material.dart';

class ItemBlogLayout extends StatelessWidget {
  const ItemBlogLayout({Key? key, required this.model}) : super(key: key);

  final Results model;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: const Color(0xfff0f0f0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                CustomBlogAvatar(
                  urlImage: model.picture.medium,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('${model.name.first} ${model.name.last}',
                      style: AppTextStyles.bodyEmphasis_88),
                  Text(
                    '${model.location.state}, ${model.location.city}',
                    style: AppTextStyles.caption,
                  )
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                kMockBody,
                style:
                    AppTextStyles.caption_3.copyWith(color: AppColors.black_56),
              ),
            ),
            const Divider(),
            Row(
              children: [
                const Icon(
                  Icons.favorite,
                  color: AppColors.secondary,
                ),
                Text(
                  '5 Likes',
                  style: AppTextStyles.caption_2
                      .copyWith(color: AppColors.secondary),
                ),
                const SizedBox(
                  width: 8.0,
                ),
                const Icon(Icons.mode_comment),
                Text('13 comments', style: AppTextStyles.caption_2)
              ],
            )
          ],
        ),
      ),
    );
  }
}
