import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/main_drawer.dart';
import 'package:flutter/material.dart';
import '../global/design_system/widgets/box_spacer.dart';
import '../schedule/presentation/widgets/my_schedules_banner.dart';
import '../training/presentation/widgets/training_banner.dart';
import '../wallet/presentation/widgets/my_wallet_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.appName),
      ),
      drawer: const MainDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              MyWalletBanner(),
              BoxSpacer.small(),
              MySchedulesBanner(),
              BoxSpacer.small(),
              TrainingBanner(),
            ],
          ),
        ),
      ),
    );
  }
}
