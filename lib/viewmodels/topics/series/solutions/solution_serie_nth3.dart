class SolutionSerieNth3 {
  static String text = 
'''
 Serie aritmética de tercer grado:
  _serie_ 
  
 Primer término: a₁ = _a_ 
 Primera razón aritmética: r₁ = _r1_ 
 Segunda razón aritmética: r₂ = _r2_ 
 Tercera razón aritmética: r₃ = _r3_ 
 Número de término a hallar: n = _n_ 
 
 Término enésimo: 
  aₙ = a₁ + (n-1).r₁ + [(n-1)(n-2).r₂]/2 +
      [(n-1)(n-2)(n-3).r₃]/6 
      
 Reemplazando: 
  aₙ = _a_ + (_n_ - 1)(_r1_) + [(_n_ - 1)(_n_ - 2)(_r2_)]/2 +
      [(_n_ - 1)(_n_ - 2)(_n_ - 3)(_r3_)]/6 
      
  aₙ = _a_ + (_n-1_)(_r1_) + [(_n-1_)(_n-2_)(_r2_)]/2 +
      [(_n-1_)(_n-2_)(_n-3_)(_r3_)]/6 
  
  aₙ = _a_ + _(n-1)*r1_ + _[(n-1)*(n-2)*r2]/2_ + _[(n-1)*(n-2)*(n-3)*r3]/6_ 
  
 Resultado: 
  aₙ = _an_
''';
}