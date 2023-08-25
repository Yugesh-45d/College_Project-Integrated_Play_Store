import 'package:flutter/material.dart';
import 'package:play_store_app/config/app_colors.dart';
import 'package:play_store_app/config/helper_func.dart';
import 'package:play_store_app/widgets/playstore_top_chart.dart';

class PlayStoreAppPage extends StatefulWidget {
  const PlayStoreAppPage({super.key});

  @override
  State<PlayStoreAppPage> createState() => _PlayStoreAppPageState();
}

class _PlayStoreAppPageState extends State<PlayStoreAppPage>
    with TickerProviderStateMixin {
  late final _tabcontroller;
  @override
  void initState() {
    _tabcontroller = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppFunc.myPadding(),
      child: Column(
        children: [
          // SizedBox(
          //   height: 48.h,
          //   child: CupertinoSearchTextField(
          //     placeholder: "    Search apps & games",
          //     borderRadius: BorderRadius.circular(32.r),
          //     prefixInsets: EdgeInsets.fromLTRB(24, 0, 0, 0),
          //     prefixIcon: Icon(
          //       CupertinoIcons.search,
          //       size: 24.h,
          //     ),
          //   ),
          // ),
          AppFunc.myLocalImage(image: "insta/meta.png"),
          AppFunc.mySizedbox(height: 8),
          TabBar(
            labelColor: AppColors.thirdColor,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            isScrollable: true,
            controller: _tabcontroller,
            tabs: [
              Tab(
                text: "Top charts",
              ),
              Tab(
                text: "Categories",
              ),
            ],
          ),
          Expanded(
            child: TabBarView(controller: _tabcontroller, children: [
              PlayStoreTopchartWidget(),
              SingleChildScrollView(child: Container()),
            ]),
          ),
        ],
      ),
    );
  }
}
