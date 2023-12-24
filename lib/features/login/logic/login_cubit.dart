import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical/core/networks/api_result.dart';
import 'package:medical/features/login/data/models/login_request_body.dart';
import 'package:medical/features/login/data/repo/login_repo.dart';
import 'package:medical/features/login/logic/login_state.dart';


class LoginCubit extends Cubit<LoginState> {
  final LoginRepo loginRepo;
  LoginCubit(this.loginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();


  void emitLoginStates(LoginRequestBody loginRequestBody) async{
     emit(const LoginState.loading());
     final response =await loginRepo.login(loginRequestBody);
     response.when(success: (loginResponse){
       emit(LoginState.success(loginResponse));
     }, failure: (error){
       emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
     }
  );}
}
