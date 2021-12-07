import 'package:fake_chat_ui/core/styles/chat_colors.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  CustomAvatar({Key? key, required this.isAddAvatar, this.urlImage})
      : super(key: key);

  final bool isAddAvatar;
  final String? urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(end: 16.0),
      child: _widget(),
    );
  }

  Widget _widget() => isAddAvatar
      ? ClipOval(
          child: Container(
              child: const Icon(Icons.add,
                  color: AppColors.primaryLight, size: 30.0),
              width: 60.0,
              height: 60.0,
              color: AppColors.appPrimary_8),
        )
      : ClipOval(
          child: Container(
          child: Image.network(
            urlImage ?? 'https://randomuser.me/api/portraits/med/men/35.jpg',
            height: 100.0,
          ),
          width: 60.0,
          height: 60.0,
        ));
}
