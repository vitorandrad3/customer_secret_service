import 'package:customer_secret_service/global/design_system/widgets/custom_dropdown.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/sizes.dart';
import 'package:customer_secret_service/global/design_system/themes/constants/strings.dart';
import 'package:customer_secret_service/global/design_system/widgets/box_spacer.dart';
import 'package:flutter/material.dart';

class PreferredRegionsPage extends StatefulWidget {
  const PreferredRegionsPage({super.key});

  @override
  State<PreferredRegionsPage> createState() => _PreferredRegionsPageState();
}

class _PreferredRegionsPageState extends State<PreferredRegionsPage> {
  double _currentSliderValue = Sizes.initialSliverValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.preferredRegions),
      ),
      body: Column(
        children: [
          const BoxSpacer.large(),
          const CustomDropDown(
              items: [DropdownMenuItem(child: Text('Taubaté'))],
              label: Strings.mainCity),
          const BoxSpacer.large(),
          Text(
            '${Strings.showServicesInRound} ${_currentSliderValue.round()} ${Strings.km}',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const BoxSpacer.xLarge(),
          Slider(
              divisions: Sizes.DivisionsSliverValue.toInt(),
              label: _currentSliderValue.round().toString(),
              min: Sizes.minSliverValue,
              max: Sizes.maxSliverValue,
              value: _currentSliderValue,
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              })
        ],
      ),
    );
  }
}
