import 'dart:convert';

class Recebimento {
  int? idRecebiento;
  String? etiquetaPalet;
  String? etiquetaCaixa;
  int? idProduto;
  String? qtdConferida;
  String? documentoDe;
  String? documentoAte;
  String? dateDe;
  String? dateAte;
  String? referenciaCaixa;
  String? data;
  String? hora;
  int? idUsuario;
  Recebimento({
    this.idRecebiento,
    this.etiquetaPalet,
    this.etiquetaCaixa,
    this.idProduto,
    this.qtdConferida,
    this.documentoDe,
    this.documentoAte,
    this.dateDe,
    this.dateAte,
    this.referenciaCaixa,
    this.data,
    this.hora,
    this.idUsuario,
  });

  Map<String, dynamic> toMap() {
    return {
      'id_recebimento': idRecebiento,
      'etiqueta_palete': etiquetaPalet,
      'etiqueta_caixa': etiquetaCaixa,
      'id_produto': idProduto,
      'qtd_conferia': qtdConferida,
      'documento_de': documentoDe,
      'documento_ate': documentoAte,
      'date_de': dateDe,
      'data_ate': dateAte,
      'referencia_caixa': referenciaCaixa,
      'data': data,
      'hora': hora,
      'id_usuario': idUsuario,
    };
  }

  factory Recebimento.fromMap(Map<String, dynamic> map) {
    return Recebimento(
      idRecebiento: map['id_recebimento']?.toInt() ?? 0,
      etiquetaPalet: map['etiqueta_palete'] ?? '',
      etiquetaCaixa: map['etiqueta_caixa'] ?? '',
      idProduto: map['id_produto']?.toInt() ?? 0,
      qtdConferida: map['qtd_conferia'] ?? '',
      documentoDe: map['documento_de'] ?? '',
      documentoAte: map['documento_ate'] ?? '',
      dateDe: map['date_de'] ?? '',
      dateAte: map['data_ate'] ?? '',
      referenciaCaixa: map['referencia_caixa'] ?? '',
      data: map['data'] ?? '',
      hora: map['hora'] ?? '',
      idUsuario: map['id_usuario']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Recebimento.fromJson(String source) => Recebimento.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Recebimento(idRecebiento: $idRecebiento, etiquetaPalet: $etiquetaPalet, etiquetaCaixa: $etiquetaCaixa, idProduto: $idProduto, qtdConferida: $qtdConferida, documentoDe: $documentoDe, documentoAte: $documentoAte, dateDe: $dateDe, dateAte: $dateAte, referenciaCaixa: $referenciaCaixa, data: $data, hora: $hora, idUsuario: $idUsuario)';
  }
}

class Recebimentos {
  final List<Recebimento> recebimentos;
  Recebimentos({
    required this.recebimentos,
  });

  Map<String, dynamic> toMap() {
    return {
      'list': recebimentos.map((x) => x.toMap()).toList(),
    };
  }

  ///
  ///{
//   "list": [
//     {
//       "id_recebimento": 40,
//       "etiqueta_palete": "2022.P.0000000001",
//       "etiqueta_caixa": "2022.C.0000000001",
//       "id_produto": 1,
//       "qtde_conferida": "1,000",
//       "documento_de": "1",
//       "documento_ate": "99",
//       "data_de": "02/03/2022",
//       "data_ate": "02/05/2022",
//       "referencia_caixa": "Teste 123",
//       "id_usuario": 1,
//       "data": "02/03/2022",
//       "hora": "19:36:22"
//     },
//     {
//       "id_recebimento": 40,
//       "etiqueta_palete": "2022.P.0000000001",
//       "etiqueta_caixa": "2022.C.0000000001",
//       "id_produto": 1,
//       "qtde_conferida": "1,000",
//       "documento_de": "1",
//       "documento_ate": "99",
//       "data_de": "02/03/2022",
//       "data_ate": "02/05/2022",
//       "referencia_caixa": "Teste 123",
//       "id_usuario": 1,
//       "data": "02/03/2022",
//       "hora": "19:36:22"
//     }
//   ]
// }
  ///

  factory Recebimentos.fromMap(Map<String, dynamic> map) {
    return Recebimentos(recebimentos: map['list'].map<Recebimento>((rec) => Recebimento.fromMap(rec)).toList());
  }

  String toJson() => json.encode(toMap());

  factory Recebimentos.fromJson(String source) => Recebimentos.fromMap(json.decode(source));

  @override
  String toString() => 'Recebimentos(recebimentos: $recebimentos)';
}
