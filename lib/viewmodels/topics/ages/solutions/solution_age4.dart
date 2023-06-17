class SolutionAge4 {
  static String text = 
'''
 Año nacimiento hijo 1: 
  - Persona = _a_ años 
  - Hijo 1 = 0 años 
 Año nacimiento hijo 2: 
  - Persona = _b_ años 
  - Hijo 1 = _b-a_ 
  - Hijo 2 = 0 años 
 Año 2022: 
  - Hijo 1 = _b-a_ + x 
  - Hijo 2 = x años 
  
 Por condición: 
  _b_ - _a_ + x + x = _c_ 
  _b-a_ + 2.x = _c_ 
  2.x = _c+a-b_ 
  x = _x_ 
 Año de nacimiento de la persona: 
  = 2022 - _b_ - x \r\n = 2022 - _b_ - _x_ 
  
 Respuesta: Año _2022-b-x_
''';
}