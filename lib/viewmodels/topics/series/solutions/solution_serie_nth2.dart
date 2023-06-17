class SolutionSerieNth2 {
  static String text = 
'''
 Serie aritmética de segundo grado:
  _serie_ 
 
 Primer término: a₁ = _a_ 
 Primera razón aritmética: r₁ = _r1_ 
 Segunda razón aritmética: r₂ = _r2_ 
 Número de término a hallar: n = _n_ 
 
 Término enésimo: 
  aₙ = a₁ + (n-1).r₁ + [(n-1)(n-2).r₂]/2 
  
 Reemplazando: 
  aₙ = _a_ + (_n_ - 1)(_r1_) + [(_n_ - 1)(_n_ - 2)(_r2_)]/2 
  aₙ = _a_ + (_n-1_)(_r1_) + [(_n-1_)(_n-2_)(_r2_)]/2 
  aₙ = _a_ + _(n-1)*r1_ + _[(n-1)*(n-2)*r2]/2_ 
  
 Resultado: 
  aₙ = _an_
''';
}