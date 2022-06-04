import 'core/init/theme/my_theme.dart';
import 'features/charts/view_model/pie_charts_view_model.dart';
import 'features/home/view/home_view.dart';
import 'features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'features/months/view_model/months_view_model.dart';

// todo : show all transactions
// todo : add name section on onboard section
// todo : change name feature
// todo : add onboarding
// todo : add hive

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
    providers: [
      Provider<HomeViewModel>(
        create: (context) => HomeViewModel(),
      ),
      Provider<MonthsViewModel>(
        create: (context) => MonthsViewModel(),
      ),
      Provider<PieChartsViewModel>(
        create: (context) => PieChartsViewModel(),
      )
    ],
    child: ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_) {
        return const MyApp();
      },
    ),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: myTheme,
        debugShowCheckedModeBanner: false,
        title: "Dabasir's Wallet",
        home: HomeView());
  }
}
