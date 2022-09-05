import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/presentation/cubits/app_cubit/states.dart';

class WeatherAppCubit extends Cubit<WeatherAppStates> {
  WeatherAppCubit() : super(WeatherAppInitialState());

  static WeatherAppCubit get(context) => BlocProvider.of<WeatherAppCubit>(context);
}
