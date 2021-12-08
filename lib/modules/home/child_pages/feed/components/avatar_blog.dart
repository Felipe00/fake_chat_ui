import 'package:flutter/material.dart';

class CustomBlogAvatar extends StatelessWidget {
  CustomBlogAvatar({Key? key, this.urlImage})
      : super(key: key);

  final String? urlImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(end: 16.0),
      child: _widget(),
    );
  }

  Widget _widget() => ClipOval(
          child: SizedBox(
          child: Image.network(
            urlImage ?? 'https://randomuser.me/api/portraits/med/men/35.jpg',
            height: 100.0,
          ),
          width: 40.0,
          height: 40.0,
        ));
}
