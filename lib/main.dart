import 'package:dabasirs_wallet/core/init/theme/my_theme.dart';
import 'package:dabasirs_wallet/features/home/view/home_view.dart';
import 'package:dabasirs_wallet/features/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
// todo Expense Income toplamlarını göstermek için "ayList"leri for each ile toplamlarını alıp toplamlarını gösterelim
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MultiProvider(
    providers: [
      Provider<HomeViewModel>(
        create: (context) => HomeViewModel(),
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
