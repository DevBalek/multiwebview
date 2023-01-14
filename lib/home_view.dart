import 'package:flutter/material.dart';
import 'package:multiwebview/splash_view.dart';
import 'package:multiwebview/tab_amount_controller.dart';
import 'constant.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

TabAmountController tabAmountController = TabAmountController();

class _HomeViewState extends State<HomeView> {
  //Init state
  @override
  void initState() {
    super.initState();
    firstLaunch = false;

    /*
    //first launch splash screen control
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        firstLaunch = false;
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: appBackgroundColor,
            systemNavigationBarColor: appBackgroundColor,
            // systemNavigationBarColor: Colors.transparent,
          ),
        );
      });
    });
    */
    // createBannerAd();
    // createInterstitialAd();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Text(
            'Choosen Tab ${context.watch<TabAmountController>}',
            style: const TextStyle(
              color: appBackgroundColor,
              fontSize: 24,
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 40,
              ),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 400,
                  childAspectRatio: 5 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                itemCount: tabButtons.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(primary: appBackgroundColor),
                    onPressed: () {
                      tabAmountController
                          .setTabAmount(tabButtons[index].tabAmount);
                    },
                    child: Text('${tabButtons[index].tabAmount} Tabs'),
                  );
                },
              ),
            ),
          ),
          Visibility(
            visible: firstLaunch,
            child: const SplashView(),
          ),
        ],
      ),
    );
  }
}

class TabButton {
  int tabAmount;

  TabButton(this.tabAmount);
}

List<TabButton> tabButtons = [
  TabButton(2),
  TabButton(5),
  TabButton(10),
  TabButton(20),
  TabButton(30),
];
