import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/cubits/home_cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  void openHomeDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
    scaffoldKey.currentState!.openDrawer();
    emit(OpenHomeDrawerState());
  }
}
