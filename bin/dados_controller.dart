import 'data/model/dados_model.dart';
import 'data/repository/envio_dados_repository.dart';

class DadosController {
  final _repository = EnvioDadosRepository();
  Future<bool> enviarRecebimento({required String pallet, required String data}) async {
    if (pallet == 'alterado') {
      return false;
    }
    final _recebimento = Recebimento(
      data: data,
      etiquetaPalet: pallet,
    );
    final _recebido = await _repository.enviaDadosWebService(_recebimento);
    if (_recebido) {
      print('Dados Recebidos');
      return true;
    } else {
      print('Falha');
      return false;
    }
  }
}
