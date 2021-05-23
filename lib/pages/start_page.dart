import 'package:flutter/material.dart';

import '../widgets/filter_widget.dart';
import '../widgets/profile_button_widget.dart';
import '../widgets/video_card_widget.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final List<String> _filters = [
    'Tudo',
    'Mixes',
    'Call of Duty: Warzone',
    'Flutter',
  ];

  int _selectedFilterIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              title: Container(
                height: 25.0,
                child: Image.asset(
                  'images/yt_logo_white.png',
                ),
              ),
              floating: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.cast),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                ProfileButtonWidget(
                  profileUrl:
                      'https://lh3.googleusercontent.com/ogw/ADGmqu8aNs5m1R-Zm74u4buYOTxj0Mp8_6OeOKhQH7cA=s83-c-mo',
                ),
              ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(45.0),
                child: Container(
                  height: 45.0,
                  width: double.maxFinite,
                  child: Column(
                    children: [
                      Divider(
                        color: Colors.grey,
                        height: 0,
                      ),
                      Expanded(
                        child: FilterWidget(
                          filters: _filters,
                          selectedFilterIndex: _selectedFilterIndex,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => Container(
                  width: double.maxFinite,
                  child: VideoCardWidget(
                    thumbImage: 'https://picsum.photos/1920/1080',
                    title: 'Título do vídeo',
                    profileImage:
                        'https://lh3.googleusercontent.com/ogw/ADGmqu8aNs5m1R-Zm74u4buYOTxj0Mp8_6OeOKhQH7cA=s83-c-mo',
                    channelName: 'Canal',
                    visualizations: '29 mil visualizações',
                    uploadInterval: 'há 6 dias',
                  ),
                ),
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
