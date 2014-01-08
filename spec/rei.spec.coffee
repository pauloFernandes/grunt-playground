describe "Movimentos do Rei.", ->
  jogo = new Jogo
  rei = new Rei Cor.BRANCA
 
  beforeEach ->
    jogo.limpaTabuleiro()
    jogo.coordenadas "d5", rei

  it "O rei pode se mover uma casa para cima", ->
    expect(->jogo.move "d5", "d6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d6").toBe rei
  it "O rei pode se mover uma casa para baixo", ->
    expect(->jogo.move "d5", "d4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "d4").toBe rei
  it "O rei pode se mover uma casa para a esquerda", ->
    expect(->jogo.move "d5", "c5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c5").toBe rei
  it "O rei pode se mover uma casa para a direita", ->
    expect(->jogo.move "d5", "e5").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e5").toBe rei
  it "O rei pode se mover uma casa para a diagonal de cima e esquerda", ->
    expect(->jogo.move "d5", "c6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c6").toBe rei
  it "O rei pode se mover uma casa para a diagonal de cima e direita", ->
    expect(->jogo.move "d5", "e6").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e6").toBe rei
  it "O rei pode se mover uma casa para a diagonal de baixo e esquerda", ->
    expect(->jogo.move "d5", "c4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "c4").toBe rei
  it "O rei pode se mover uma casa para a diagonal de baixo e direita", ->
    expect(->jogo.move "d5", "e4").not.toThrow()
    expect(jogo.coordenadas "d5").toEqual []
    expect(jogo.coordenadas "e4").toBe rei
  it "O rei não deve fazer qualquer movimento inválido", ->
    expect(->jogo.move "d5", "a1").toThrow()
    expect(jogo.coordenadas "d5").toBe rei
    expect(jogo.coordenadas "a1").toEqual []