import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/error/failure.dart';
import 'package:weather_app/domain/entities/weather.dart';
import 'package:weather_app/domain/usecases/get_weather_by_country_name_usecase.dart';
import 'package:weather_app/presentation/cubits/home_cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  final GetWeatherByCountryNameUseCase getWeatherByCountryNameUseCase;

  HomeCubit({required this.getWeatherByCountryNameUseCase}) : super(HomeInitialState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);

  Future<Either<Failure, Weather>> getWeatherByCountryName(String countryName) async {
    Either<Failure, Weather> response = await getWeatherByCountryNameUseCase.execute(countryName);
    // emit(response.fold((l) => ErrorState, (r) => SuccessState));
    return response;
  }

  // void openHomeDrawer(GlobalKey<ScaffoldState> scaffoldKey) {
  //   scaffoldKey.currentState!.openDrawer();
  //   emit(OpenHomeDrawerState());
  // }

}
