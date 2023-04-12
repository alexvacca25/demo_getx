class Cliente {
  late String nombre;
  late String apellido;
  late int edad;
  late bool estado;
  late String foto;

  Cliente(
      {required this.nombre,
      required this.apellido,
      required this.edad,
      required this.estado,
      required this.foto});

  factory Cliente.crear(Map<String, dynamic> jsonMap) {
    return Cliente(
        nombre: jsonMap['nombre'],
        apellido: jsonMap['apellido'],
        edad: jsonMap['edad'],
        estado: jsonMap['estado'],
        foto: jsonMap['foto']);
  }
}

Map<String, dynamic> cli = {
  "nombre": "Alexander",
  "apellido": "Vacca",
  "edad": 25,
  "estado": true,
  "foto":
      "https://static.wixstatic.com/media/8b7a12_16dbf0d48ec4458495353e291a02d272~mv2.jpg/v1/fill/w_350,h_479,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/8b7a12_16dbf0d48ec4458495353e291a02d272~mv2.jpg"
};
Map<String, dynamic> cli1 = {
  "nombre": "Pedro",
  "apellido": "Perez",
  "edad": 67,
  "estado": false,
  "foto":
      "https://static.wixstatic.com/media/8b7a12_16dbf0d48ec4458495353e291a02d272~mv2.jpg/v1/fill/w_350,h_479,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/8b7a12_16dbf0d48ec4458495353e291a02d272~mv2.jpg"
};
Map<String, dynamic> cli2 = {
  "nombre": "Maria",
  "apellido": "Diaz",
  "edad": 32,
  "estado": true,
  "foto":
      "https://static.wixstatic.com/media/8b7a12_16dbf0d48ec4458495353e291a02d272~mv2.jpg/v1/fill/w_350,h_479,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/8b7a12_16dbf0d48ec4458495353e291a02d272~mv2.jpg"
};

List<Cliente> listaClientes = [
  Cliente.crear(cli),
  Cliente.crear(cli1),
  Cliente.crear(cli2),
  Cliente.crear(cli),
  Cliente.crear(cli1),
  Cliente.crear(cli2),
  Cliente.crear(cli),
  Cliente.crear(cli1),
  Cliente.crear(cli2),
];
