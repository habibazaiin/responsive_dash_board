import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xffFAFAFA)
              ),
              child: UserInfoListTile(
                image: Assets.imagesAvatar3,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com',
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawerItemListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawer(
                  drawerItemModel: DrawerItemModel(
                    title: 'Setting System',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawer(
                  drawerItemModel: DrawerItemModel(
                    title: 'Logout Account',
                    image: Assets.imagesLogout,
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
