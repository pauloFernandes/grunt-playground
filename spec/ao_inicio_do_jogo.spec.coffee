describe "Posicionamento das peças", ->

  beforeEach ->
    jogo.inicializaPosicaoPecas()

  jogo = new Jogo
  it "A casa a1 do tabuleiro deve conter uma torre branca.", ->
    peca = jogo.coordenadas "a1"
    console.log peca
    expect(peca instanceof Torre).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa h1 do tabuleiro deve conter uma torre branca.", ->
    peca = jogo.coordenadas "h1"
    expect(peca instanceof Torre).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa b1 do tabuleiro deve conter um cavalo branco.", ->
    peca = jogo.coordenadas "b1"
    expect(peca instanceof Cavalo).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa g1 do tabuleiro deve conter um cavalo branco.", ->
    peca = jogo.coordenadas "g1"
    expect(peca instanceof Cavalo).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa c1 do tabuleiro deve conter um bispo branco.", ->
    peca = jogo.coordenadas "c1"
    expect(peca instanceof Bispo).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa f1 do tabuleiro deve conter um bispo branco.", ->
    peca = jogo.coordenadas "f1"
    expect(peca instanceof Bispo).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa d1 do tabuleiro deve conter uma rainha branca.", ->
    peca = jogo.coordenadas "d1"
    expect(peca instanceof Rainha).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "A casa e1 do tabuleiro deve conter um rei branco.", ->
    peca = jogo.coordenadas "e1"
    expect(peca instanceof Rei).toBe true
    expect(peca.cor).toBe Cor.BRANCA
  it "As casas a2, b2, c2, d2, e2, f2 e g2 devem conter um peão branco.", ->
    teste = (coordenada)->
      peca = jogo.coordenadas coordenada
      expect(peca instanceof Peao).toBe true
      expect(peca.cor).toBe Cor.BRANCA
    teste i for i in ["a2", "b2", "c2", "d2", "e2", "f2", "g2", "h2"]
  it "A casa a8 do tabuleiro deve conter uma torre preta.", ->
    peca = jogo.coordenadas "a8"
    expect(peca instanceof Torre).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa h8 do tabuleiro deve conter uma torre preta.", ->
    peca = jogo.coordenadas "h8"
    expect(peca instanceof Torre).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa b8 do tabuleiro deve conter um cavalo preto.", ->
    peca = jogo.coordenadas "b8"
    expect(peca instanceof Cavalo).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa g8 do tabuleiro deve conter um cavalo preto.", ->
    peca = jogo.coordenadas "g8"
    expect(peca instanceof Cavalo).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa c8 do tabuleiro deve conter um bispo preto.", ->
    peca = jogo.coordenadas "c8"
    expect(peca instanceof Bispo).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa f8 do tabuleiro deve conter um bispo preto.", ->
    peca = jogo.coordenadas "f8"
    expect(peca instanceof Bispo).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa d8 do tabuleiro deve conter uma rainha preta.", ->
    peca = jogo.coordenadas "d8"
    expect(peca instanceof Rainha).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "A casa e8 do tabuleiro deve conter um rei preto.", ->
    peca = jogo.coordenadas "e8"
    expect(peca instanceof Rei).toBe true
    expect(peca.cor).toBe Cor.PRETA
  it "As casas a7, b7, c7, d7, e7, f7 e g7, h7 devem conter um peão preto.", ->
    teste = (coordenada)->
      peca = jogo.coordenadas coordenada
      expect(peca instanceof Peao).toBe true
      expect(peca.cor).toBe Cor.PRETA
    teste i for i in ["a7", "b7", "c7", "d7", "e7", "f7", "g7", "h7"]