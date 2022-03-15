import 'package:dio/dio.dart';
import '../model/dados_model.dart';

class EnvioDadosRepository {
  Future<bool> enviaDadosWebService(Recebimento recebimento) async {
    final dio = Dio();
    Response response;
    try {
      response = await dio.post('http://0.0.0.0:6009/empresa/subir-dados', data: recebimento.toJson());
      if (response.statusCode == 200) {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }

  Future<Recebimento?> pegarDadosWebservice(int dados) async {
    final dio = Dio();
    Response response;
    try {
      response = await dio.get('http://0.0.0.0:6009/empresa/pegar');
      if (response.statusCode == 200) {
        return Recebimento();
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }
}
