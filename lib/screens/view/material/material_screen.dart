
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:platform_converter_app/screens/view/material/chat/chat.dart';
import 'package:platform_converter_app/screens/view/material/profile/profile.dart';
import 'package:platform_converter_app/screens/view/material/call/call.dart';
import 'package:platform_converter_app/screens/view/material/setting/settings.dart';
import 'package:provider/provider.dart';
import '../../provider/switch_provider.dart';

class MaterialScreen extends StatelessWidget {
  const MaterialScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text(
          'PlatForm Converter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: [
          Switch(
            value: Provider.of<SwitchProvider>(context,listen: true).isActive,
            onChanged: (value) =>
                Provider.of<SwitchProvider>(context, listen: false).isChange(value),
          ),
        ],
        centerTitle: true,
      ),
      body: ContainedTabBarView(tabs: [
        Icon(Icons.person),
        Text('CHATS'),
        Text('CALLS'),
        Text('SETTING'),
      ], views: [
        ProfileScreen(),
        ChatTab(),
        Call(),
        Settings(),
      ]),
    );
  }
}
