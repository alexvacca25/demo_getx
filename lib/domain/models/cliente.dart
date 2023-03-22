class Cliente {
  late String nombre;
  late String apellido;
  late int edad;
  late bool estado;

  Cliente(
      {required this.nombre,
      required this.apellido,
      required this.edad,
      required this.estado});

  factory Cliente.crear(Map<String, dynamic> jsonMap) {
    return Cliente(
        nombre: jsonMap['nombre'],
        apellido: jsonMap['apellido'],
        edad: jsonMap['edad'],
        estado: jsonMap['estado']);
  }
}

Map<String, dynamic> cli = {
  "nombre": "Alexander",
  "apellido": "Vacca",
  "edad": 25,
  "estado": true
};
Map<String, dynamic> cli1 = {
  "nombre": "Pedro",
  "apellido": "Perez",
  "edad": 67,
  "estado": false
};
Map<String, dynamic> cli2 = {
  "nombre": "Maria",
  "apellido": "Diaz",
  "edad": 32,
  "estado": true
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
