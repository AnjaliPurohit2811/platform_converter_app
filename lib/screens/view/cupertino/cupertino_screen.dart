
import 'package:flutter/cupertino.dart';
import 'package:platform_converter_app/screens/view/cupertino/profile/profile.dart';
import 'package:platform_converter_app/screens/view/cupertino/setting/components/settings.dart';
import 'package:provider/provider.dart';
import '../../provider/switch_provider.dart';
import 'call/call.dart';
import 'chat/chat.dart';

class Ios_Screen extends StatelessWidget {
  const Ios_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(
          'PlatForm Converter',
          style: TextStyle(fontSize: 20),
        ),
        trailing: CupertinoSwitch(
          value: Provider.of<SwitchProvider>(context, listen: true).isActive,
          onChanged: (value) =>
              Provider.of<SwitchProvider>(context, listen: false)
                  .isChange(value),
        ),
      ),
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled),
              //label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.chat_bubble_text),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.phone),
              label: 'Call',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
              label: 'Setting',
            ),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            builder: (BuildContext context) {
              switch (index) {
                case 0:
                  return IosProfile();
                  break;
                case 1:
                  return IosChats();
                  break;
                case 2:
                  return IosCall();
                  break;
                case 3:
                  return IosSetting();
                  break;
                default:
                  return Container();
              }
            },
          );
        },
      ),
    );
  }
}
