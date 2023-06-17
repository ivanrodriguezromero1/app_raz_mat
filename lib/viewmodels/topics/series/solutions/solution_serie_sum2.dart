class SolutionSerieSum2 {
  static String text =
'''
 Serie aritmética de segundo grado:
  _serie_ 
  
 Primer término: a₁ = _a_ 
 Primera razón aritmética: r₁ = _r1_ 
 Segunda razón aritmética: r₂ = _r2_ 
 Número de términos: n = _n_ 
 
 Suma de términos: 
  Sₙ = a₁.n + [(n-1).n.r₁]/2 +
      [(n-2)(n-1).n.r₂]/6 
      
 Reemplazando: 
  Sₙ = (_a_)(_n_) + [(_n_ - 1)(_n_)(_r1_)]/2 +
      [(_n_ - 2)(_n_ - 1)(_n_)(_r2_)]/6 
  
  Sₙ = _a*n_ + [(_n-1_)(_n_)(_r1_)]/2 +
      [(_n-2_)(_n-1_)(_n_)(_r2_)]/6 
      
  Sₙ = _a*n_ + _[(n-1)*n*r1]/2_ + _[(n-2)*(n-1)*n*r2]/6_ 
  
 Resultado: 
  Sₙ = _sn_
''';
}