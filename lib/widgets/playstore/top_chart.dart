import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:play_store_app/screens/playstore_app/app_details_screen.dart';

import '../../datas/playstore/playstore_data.dart';
import '../../models/playstore/top_chart_model.dart';

class PlayStoreTopchartWidget extends StatelessWidget {
  const PlayStoreTopchartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: PlayStoreApp_Data.length,
      itemBuilder: (BuildContext context, int index) {
        final e = PlayStoreApp_Data[index];
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => PlayStoreAppScreenDetail(
                  appData: e,
                ),
              ),
            );
          },
          child: PlayStoreTopchartModel(
            index: (index + 1).toString(),
            name: e["name"],
            logo: e["logo"],
            category: e["category"],
            size: e["size"],
            ratings: e["ratings"],
          ),
        );
      },
    );
  }
}
