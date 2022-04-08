class MoedaModel{
  final String name;
  final double real;
  final double dolar;
  final double euro;

  MoedaModel(this.name, this.real, this.dolar, this.euro);

  static List<MoedaModel> getMoedas(){
    return <MoedaModel>[
      MoedaModel('Real', 1.0, 0.21, 0.19),
      MoedaModel('Dolar', 4.75, 1.0, 0.92),
      MoedaModel('Euro', 5.16, 1.08, 1.0),
    ];
  }
}