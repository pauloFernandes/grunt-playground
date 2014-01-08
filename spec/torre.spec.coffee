describe "Movimentos da Torre.", ->
  jogo = new Jogo
  torre = new Torre Cor.BRANCA
  beforeEach ->
    jogo.limpaTabuleiro()
    jogo.coordenadas "d5", torre

  it "Uma torre deve ser capaz de se movimentar uma casa para cima.", ->
    expect(->jogo.move "d5", "d6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d6").toBe torre
  it "Uma torre deve ser capaz de se movimentar várias casas para cima.", ->
    expect(->jogo.move "d5", "d8").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d8").toBe torre
  it "Uma torre deve ser capaz de se movimentar uma casa para baixo.", ->
    expect(->jogo.move "d5", "d4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d4").toBe torre
  it "Uma torre deve ser capaz de se movimentar várias casas para baixo.", ->
    expect(->jogo.move "d5", "d1").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d1").toBe torre
  it "Uma torre deve ser capaz de se movimentar uma casa para a direita.", ->
    expect(->jogo.move "d5", "e5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e5").toBe torre
  it "Uma torre deve ser capaz de se movimentar várias casas para a
  direita.", ->
    expect(->jogo.move "d5", "h5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "h5").toBe torre
  it "Uma torre deve ser capaz de se movimentar uma casa para a esquerda.", ->
    expect(->jogo.move "d5", "c5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c5").toBe torre
  it "Uma torre deve ser capaz de se movimentar várias casas para a
  esquerda.", ->
    expect(->jogo.move "d5", "a5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "a5").toBe torre
  it "Uma torre não deve ser capaz de executar um movimento inválido.", ->
    expect(->jogo.move "d5", "a1").toThrow()
    expect(jogo.coordenadas "d5").toBe torre
    expect(jogo.coordenadas "a1").toEqual []