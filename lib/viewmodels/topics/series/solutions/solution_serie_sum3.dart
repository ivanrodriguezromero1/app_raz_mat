class SolutionSerieSum3 {
  static String text =
'''
 Serie aritmética de tercer grado:
  _serie_ 
  
 Primer término: a₁ = _a_ 
 Primera razón aritmética: r₁ = _r1_ 
 Segunda razón aritmética: r₂ = _r2_ 
 Tercera razón aritmética: r₃ = _r3_ 
 Número de términos: n = _n_ 
 
 Suma de términos: 
  Sₙ = a₁.n + [(n-1).n.r₁]/2 +
      [(n-2)(n-1).n.r₂]/6 + 
      [(n-3)(n-2)(n-1).n.r₃]/24 
      
 Reemplazando: 
  Sₙ = (_a_)(_n_) + [(_n_ - 1)(_n_)(_r1_)]/2 +
      [(_n_ - 2)(_n_ - 1)(_n_)(_r2_)]/6 +
      [(_n_ - 3)(_n_ - 2)(_n_ - 1)(_n_)(_r3_)]/24 
      
  Sₙ = _a*n_ + [(_n-1_)(_n_)(_r1_)]/2 +
      [(_n-2_)(_n-1_)(_n_)(_r2_)]/6 +
      [(_n-3_)(_n-2_)(_n-1_)(_n_)(_r3_)]/24 
      
  Sₙ = _a*n_ + _[(n-1)*n*r1]/2_ + _[(n-2)*(n-1)*n*r2]/6_ + _[(n-3)*(n-2)*(n-1)*n*r3]/24_ 
 
 Resultado: 
  Sₙ = _sn_
''';
}