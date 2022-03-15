import 'dados_controller.dart';

final controller = DadosController();
void main() async {
  String textFieldPalete = "1234567";
  String textFieldData = DateTime.now().toIso8601String();
  await controller.enviarRecebimento(
    pallet: textFieldPalete,
    data: textFieldData,
  );
}



///
/// Page View
///  |_ controller ModelView
///     |_ service < regra de negocio. ModelView
///           |_repository (Model/Data)
/// Page
///   controller
///     repository
///       source
/// 