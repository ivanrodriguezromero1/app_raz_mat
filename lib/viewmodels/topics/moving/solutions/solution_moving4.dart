class SolutionMoving4 {
  static String text = 
'''
 Velocidad en el primer tramo: 
  V₁ = _b_ m/s 
 Velocidad en el segundo tramo: 
  V₂ = _c_ m/s 
 Tiempo en el primer tramo: T₁ 
 Tiempo en el segundo tramo: T₂ 
 Tiempo total: 
  T = _t_ = T₁ + T₂ 
 Recorrido total: 
  L = _a_ = V₁.T₁ + V₂.T₂ 
  
 Reemplazando: 
  _a_ =  (_b_)T₁ + (_c_)T₂ 
  _a_ =  (_b_)(_t_ - T₂) + (_c_)T₂ 
  (_c_ - _b_)T₂ = _a_ - (_b_)(_t_) 
  (_c-b_)T₂ = _a_ - _b*t_ 
  (_c-b_)T₂ = _a-b*t_ 
  T₂ = _t2_ 
  
 Respuesta: _t2_ segundos
''';
}