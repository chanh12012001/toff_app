import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:toff_app/provider/theme_provider.dart';
import '../../../constants/constants.dart';
import '../../../models/models.dart';
import '../widgets.dart';

class NotificationMenu extends StatelessWidget {
  const NotificationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider themeProvider, child) {
        return PopUpMenu(
          menuList: [
            PopupMenuItem(
              enabled: false,
              child: Stack(
                children: [
                  const SizedBox(
                    height: 50,
                    width: double.maxFinite,
                  ),
                  Transform.rotate(
                    angle: -45 * 3.14 / 180,
                    child: SvgPicture.asset(
                      IconConstant.notification,
                      width: 55,
                      height: 55,
                      color: themeProvider.getTheme.iconTheme.color!
                          .withOpacity(0.1),
                    ),
                  ),
                  Positioned(
                    top: 12,
                    left: 5,
                    child: Text(
                      "Notification",
                      style: themeProvider.getTheme.textTheme.titleLarge,
                    ),
                  ),
                ],
              ),
            ),
            const PopupMenuDivider(),
            PopupMenuItem(
              enabled: false,
              child: Container(
                width: double.maxFinite,
                constraints: const BoxConstraints(
                  minHeight: 100,
                  maxHeight: 280,
                ),
                child: ListView.separated(
                  padding: const EdgeInsets.all(8),
                  itemCount: notifications.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _notificationCard(notifications[index]);
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      const Divider(),
                ),
              ),
            ),
            PopupMenuItem(
              child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6362E7)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'Check all',
                      style: themeProvider.getTheme.textTheme.titleMedium!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
          icon: Badge(
            badgeContent: Text(
              "3",
              style: themeProvider.getTheme.textTheme.titleSmall!
                  .copyWith(color: Colors.white),
            ),
            child: const MenuIcon(
              svgString: IconConstant.notification,
            ),
          ),
        );
      },
    );
  }
}

Widget _notificationCard(NotificationModel notification) {
  return Container(
    padding: const EdgeInsets.only(top: 10, bottom: 10),
    width: double.maxFinite,
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          width: 50,
          height: 50,
          child: CircleAvatar(
            backgroundColor: notification.backgroundAvatarColor,
            child: Image.asset(notification.avatarUrl),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notification.title,
                style: const TextStyle(
                  fontFamily: "Roboto",
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                notification.content,
                maxLines: 2,
                style: const TextStyle(
                  fontFamily: "Roboto",
                  color: Color.fromARGB(255, 133, 131, 131),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          height: 55,
          child: Text(
            notification.time,
            style: const TextStyle(
              fontFamily: "Roboto",
              color: Color.fromARGB(255, 133, 131, 131),
              fontSize: 14,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topCenter,
          height: 55,
          child: const Icon(Icons.close),
        ),
      ],
    ),
  );
}
