describe "Movimentos da Rainha.", ->
  jogo = new Jogo
  rainha = new Rainha Cor.BRANCA
 
  beforeEach ->
    jogo.limpaTabuleiro()
    jogo.coordenadas "d5", rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para a diagonal acima
  e à esquerda.", ->
    expect(->jogo.move "d5", "c6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c6").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar várias casas para a diagonal
  acima e à esquerda.", ->
    expect(->jogo.move "d5", "a8").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "a8").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para a diagonal acima
  e à direita.", ->
    expect(->jogo.move "d5", "e6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e6").toBe rainha
    
  it "Uma rainha deve ser capaz de se movimentar várias casas para a diagonal
  acima e à direita.", ->
    expect(->jogo.move "d5", "g8").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "g8").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para a diagonal abaixo
  e à esquerda.", ->
    expect(->jogo.move "d5", "c4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c4").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar várias casas para a diagonal
  abaixo e à esquerda.", ->
    expect(->jogo.move "d5", "a2").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "a2").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para a diagonal abaixo
  e à direita.", ->
    expect(->jogo.move "d5", "e4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e4").toBe rainha
    
  it "Uma rainha deve ser capaz de se movimentar várias casas para a diagonal
  abaixo e à direita.", ->
    expect(->jogo.move "d5", "h1").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "h1").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para cima.", ->
    expect(->jogo.move "d5", "d6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d6").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar várias casas para cima.", ->
    expect(->jogo.move "d5", "d8").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d8").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para baixo.", ->
    expect(->jogo.move "d5", "d4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d4").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar várias casas para baixo.", ->
    expect(->jogo.move "d5", "d1").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d1").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para a direita.", ->
    expect(->jogo.move "d5", "e5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e5").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar várias casas para a
  direita.", ->
    expect(->jogo.move "d5", "h5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "h5").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar uma casa para a esquerda.", ->
    expect(->jogo.move "d5", "c5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c5").toBe rainha

  it "Uma rainha deve ser capaz de se movimentar várias casas para a
  esquerda.", ->
    expect(->jogo.move "d5", "a5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "a5").toBe rainha

  it "Uma rainha não deve ser capaz de executar um movimento inválido.", ->
    expect(->jogo.move "d5", "a1").toThrow()
    expect(jogo.coordenadas "d5").toBe rainha
    expect(jogo.coordenadas "a1").toEqual []