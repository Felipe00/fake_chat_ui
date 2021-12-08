import 'package:fake_chat_ui/core/styles/app/colors.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav(
      {Key? key, required this.currentIndex, required this.onTap})
      : super(key: key);
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _component(),
    );
  }

  Widget _component() => BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          onTap: (id) {
            onTap(id);
            if (id == 0) {
              Modular.to.navigate(FeedPage.routeName);
            } else if (id == 1) {
              Modular.to.navigate('/home/chats/');
            } else if (id == 2) {
              Modular.to.navigate('/home/profile/');
            }
          },
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: _getFeedIcon(), label: _getFeedLabel()),
            BottomNavigationBarItem(
                icon: _getMessageIcon(), label: _getMessageLabel()),
            BottomNavigationBarItem(
                icon: _getProfileIcon(), label: _getProfileLabel())
          ]);

  Widget _getFeedIcon() => Icon(Icons.home, color: _getIconColor(0));

  String _getFeedLabel() => currentIndex == 0 ? 'Feed' : '';

  Widget _getMessageIcon() => Icon(Icons.message, color: _getIconColor(1));

  String _getMessageLabel() => currentIndex == 1 ? 'Chats' : '';

  Widget _getProfileIcon() =>
      Icon(Icons.perm_identity, color: _getIconColor(2));

  String _getProfileLabel() => currentIndex == 2 ? 'Profile' : '';

  Color? _getIconColor(index) => currentIndex == index ? null : Colors.grey;
}
