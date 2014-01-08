describe "Movimentos do Bispo.", ->
  jogo = new Jogo
  bispo = new Bispo Cor.BRANCA
  beforeEach ->
    jogo.limpaTabuleiro()
    jogo.coordenadas "d5", bispo

  it "Um bispo deve ser capaz de se movimentar uma casa para a diagonal acima
  e à esquerda.", ->
    expect(->jogo.move "d5", "c6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c6").toBe bispo

  it "Um bispo deve ser capaz de se movimentar várias casas para a diagonal
  acima e à esquerda.", ->
    expect(->jogo.move "d5", "a8").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "a8").toBe bispo

  it "Um bispo deve ser capaz de se movimentar uma casa para a diagonal acima
  e à direita.", ->
    expect(->jogo.move "d5", "e6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e6").toBe bispo
    
  it "Um bispo deve ser capaz de se movimentar várias casas para a diagonal
  acima e à direita.", ->
    expect(->jogo.move "d5", "g8").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "g8").toBe bispo

  it "Um bispo deve ser capaz de se movimentar uma casa para a diagonal abaixo
  e à esquerda.", ->
    expect(->jogo.move "d5", "c4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c4").toBe bispo

  it "Um bispo deve ser capaz de se movimentar várias casas para a diagonal
  abaixo e à esquerda.", ->
    expect(->jogo.move "d5", "a2").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "a2").toBe bispo

  it "Um bispo deve ser capaz de se movimentar uma casa para a diagonal abaixo
  e à direita.", ->
    expect(->jogo.move "d5", "e4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e4").toBe bispo
    
  it "Um bispo deve ser capaz de se movimentar várias casas para a diagonal
  abaixo e à direita.", ->
    expect(->jogo.move "d5", "h1").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "h1").toBe bispo

  it "Um bispo não deve ser capaz de executar um movimento inválido.", ->
    expect(->jogo.move "d5", "a1").toThrow()
    expect(jogo.coordenadas "d5").toBe bispo
    expect(jogo.coordenadas "a1").toEqual []