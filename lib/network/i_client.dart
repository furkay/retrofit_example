import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:retrofit_example/model/coin_response_dto/coin_response_dto.dart';
part 'i_client.g.dart';

@RestApi()
abstract class IClient {
  factory IClient(Dio dio, {String baseUrl}) = _IClient;

  @GET("/v1/cryptocurrency/quotes/latest")
  Future<CoinResponseDto> getCoin(@Header("X-CMC_PRO_API_KEY") String apiKey,
      @Query("symbol") String symbol);
}
