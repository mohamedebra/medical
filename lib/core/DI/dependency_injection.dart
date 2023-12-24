import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:medical/core/networks/api_service.dart';
import 'package:medical/core/networks/dio_factory.dart';
import 'package:medical/features/login/data/repo/login_repo.dart';
import 'package:medical/features/login/logic/login_cubit.dart';
final getIt = GetIt.instance;

Future<void> setupGetIt() async{

  Dio dio =  DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));
  
  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}