class DadosFakes {
  static Future<Map<String, dynamic>> pegarDados() async {
    await Future.delayed(Duration(seconds: 2));
    return {'etiqueta_palete': '13213213123', 'data': DateTime.now().toIso8601String()};
  }
}
