import 'package:get/get_navigation/src/routes/get_route.dart';

import '../feuture/home/screen/leader_board.dart';

class Approute{
  static String leaderBoard = "/LeaderBoard";
  static List<GetPage> routes = [
    GetPage(name: leaderBoard, page: ()=> LeaderBoard()),
  ];
}