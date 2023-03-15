import 'package:flutter/material.dart';

import 'custom_drawer_item.dart';
import '../../routes/routes.dart';
import '../themes/constants/sizes.dart';
import '../themes/constants/strings.dart';
import 'box_spacer.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(
          top: Sizes.borderPadding * 6,
          right: Sizes.borderPadding * 2,
          left: Sizes.borderPadding * 2,
          bottom: Sizes.borderPadding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://i.ytimg.com/vi/zhBczzBinaw/mqdefault.jpg',
            ),
            const BoxSpacer.xLarge(),
            Text(
              Strings.services,
              style: Theme.of(context).textTheme.headline6,
            ),
            const BoxSpacer(),
            CustomDrawerItem(
              icon: Icons.work,
              title: Strings.avaiableServices,
              onPressed: () {},
            ),
            const BoxSpacer.xLarge(),
            Text(
              Strings.personalInformations,
              style: Theme.of(context).textTheme.headline6,
            ),
            const BoxSpacer(),
            CustomDrawerItem(
              icon: Icons.manage_accounts,
              title: Strings.editPersonalInformations,
              onPressed: () {
                Navigator.pushNamed(context, Routes.editPersonalInformation);
              },
            ),
            CustomDrawerItem(
              icon: Icons.manage_search,
              title: Strings.evaluationHistory,
              onPressed: () {},
            ),
            CustomDrawerItem(
              icon: Icons.payments,
              title: Strings.paymentHistory,
              onPressed: () {},
            ),
            CustomDrawerItem(
              icon: Icons.south_america,
              title: Strings.preferredRegions,
              onPressed: () {
                Navigator.pushNamed(context, Routes.preferredRegions);
              },
            )
          ],
        ),
      ),
    );
  }
}
