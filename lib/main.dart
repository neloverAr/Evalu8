import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/pages_routes.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //StorageService storageService = Get.find();
    //Get.put(NotificationController());
    return  GetMaterialApp(
      getPages: routes,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      //home: const SplashScreen(),
    );
  }
}
// class MainPage extends StatelessWidget {
//   const MainPage({super.key});
//
//   @override
//   State<MainPage> createState() => _MainPageState();
// }
//
// class _MainPageState extends State<MainPage> {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => BottomNavBar(),
//         '/SearchPage': (context) => const SearchPage(),
//         '/FollowingPage': (context) => const FollowingPage(),
//       },
//     );
//   }
// }
