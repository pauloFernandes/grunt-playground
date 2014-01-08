describe "Funcionalidades do tabuleiro.", ->
  jogo = new Jogo

  beforeEach ->
    jogo.inicializaPosicaoPecas()

  it "o tabuleiro deve ser capaz de mapear as coordenadas
  com a notação algébrica abreviada", ->
    expect(jogo.coordenadas "a1").toBe jogo.tabuleiro[0][0]
    expect(jogo.coordenadas "c5").toBe jogo.tabuleiro[4][2]
    expect(jogo.coordenadas "e3").toBe jogo.tabuleiro[2][4]
    expect(jogo.coordenadas "g6").toBe jogo.tabuleiro[5][6]
    expect(jogo.coordenadas "g3").toBe jogo.tabuleiro[2][6]

  it "O tabuleiro deve ser capaz de atualizar uma determinada casa
  a partir das coordenadas fornecidas.", ->
    jogo.coordenadas "a1", new Cavalo Cor.BRANCA
    expect(jogo.coordenadas("a1") instanceof Cavalo).toBe true

  it "Caso uma coordenada errada seja informada, uma exceção
  deve ser lancada", ->
    expect(()-> jogo.coordenadas "00").toThrow()

  it "O tabuleiro deve implementar o método move", ->
    expect(jogo.move).not.toEqual undefined

  it "O método move deve lançar uma exceção caso a coordenada de origem não
  possua uma peça", ->
    expect(-> jogo.move "a4", "a5").toThrow()

  it "O método move deve lançar uma exceção caso a coordenada de origem não
  seja válida", ->
    expect(-> jogo.move "z4", "a5").toThrow()

  it "O método move deve lançar uma exceção caso a coordenada de destino não
  seja válida", ->
    expect(-> jogo.move "a4", "z5").toThrow()
  
  it "A casa destino de um movimento não pode ser igual à casa origem.", ->
    expect(->jogo.move "a2", "a2").toThrow()

  it "Uma peca nao pode ser movida para uma casa contendo uma outra peca de
  mesma cor.", ->
    jogo.limpaTabuleiro()
    jogo.coordenadas "a4", new Peca Cor.BRANCA
    jogo.coordenadas "a5", new Peca Cor.BRANCA
    expect(-> jogo.move "a4", "a5").toThrow()

  it "O método move deve consultar as regras de movimento da peca utilizada",->
    jogo.limpaTabuleiro()
    peca = new Peca Cor.BRANCA
    jogo.coordenadas "a4", peca
    spyOn peca, "validaMovimento"
    jogo.move "a4", "a5"
    expect(peca.validaMovimento).toHaveBeenCalled()

  it "A peca movida deve sair da posição de origem e partir para a posição de
  destino", ->
    jogo.limpaTabuleiro()
    peca = new Peca Cor.BRANCA
    jogo.coordenadas "a4", peca
    jogo.move "a4", "a5"
    expect(jogo.coordenadas "a4").not.toBe peca
    expect(jogo.coordenadas "a5").toBe peca