import 'package:get/get.dart';

import 'package:laravel/app/modules/agenda/bindings/agenda_binding.dart';
import 'package:laravel/app/modules/agenda/views/agenda_view.dart';
import 'package:laravel/app/modules/bayibalita/bindings/bayibalita_binding.dart';
import 'package:laravel/app/modules/bayibalita/views/bayibalita_view.dart';
import 'package:laravel/app/modules/home/bindings/home_binding.dart';
import 'package:laravel/app/modules/home/views/home_view.dart';
import 'package:laravel/app/modules/ibuhamil/bindings/ibuhamil_binding.dart';
import 'package:laravel/app/modules/ibuhamil/views/ibuhamil_view.dart';
import 'package:laravel/app/modules/jadwal/bindings/jadwal_binding.dart';
import 'package:laravel/app/modules/jadwal/views/detailpan.dart';
import 'package:laravel/app/modules/jadwal/views/jadwal_view.dart';
import 'package:laravel/app/modules/login/bindings/login_binding.dart';
import 'package:laravel/app/modules/login/views/login_view.dart';
import 'package:laravel/app/modules/panduan/bindings/panduan_binding.dart';
import 'package:laravel/app/modules/panduan/views/panduan_view.dart';
import 'package:laravel/app/modules/profil/bindings/profil_binding.dart';
import 'package:laravel/app/modules/profil/views/profil_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROFIL,
      page: () => ProfilView(),
      binding: ProfilBinding(),
    ),
    GetPage(
      name: _Paths.PANDUAN,
      page: () => PanduanView(),
      binding: PanduanBinding(),
    ),
    GetPage(
      name: _Paths.IBUHAMIL,
      page: () => IbuhamilView(),
      binding: IbuhamilBinding(),
    ),
    GetPage(
      name: _Paths.BAYIBALITA,
      page: () => BayiBalitaView(),
      binding: BayibalitaBinding(),
    ),
    GetPage(
      name: _Paths.JADWAL,
      page: () => Panduan(),
      binding: JadwalBinding(),
    ),
    GetPage(
      name: _Paths.AGENDA,
      page: () => AgendaView(),
      binding: AgendaBinding(),
    ),
  ];
}
