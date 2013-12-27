describe "No início do jogo", ->
  jogo = new Jogo
  it "O tabuleiro deve ter 64 casas, 8x8", ->
    expect(jogo.tabuleiro.length).toBe 8
    expect(coluna.length).toBe 8 for coluna in jogo.tabuleiro

  it "A classe peao deve manter a cor", ->
    preto = new Peao Cor.PRETA
    expect(preto.cor).toBe Cor.PRETA
    branco = new Peao Cor.BRANCA
    expect(branco.cor).toBe Cor.BRANCA

  it "A classe torre deve manter a cor", ->
    preto = new Torre Cor.PRETA
    expect(preto.cor).toBe Cor.PRETA
    branco = new Torre Cor.BRANCA
    expect(branco.cor).toBe Cor.BRANCA

  it "A classe cavalo deve manter a cor", ->
    preto = new Cavalo Cor.PRETA
    expect(preto.cor).toBe Cor.PRETA
    branco = new Cavalo Cor.BRANCA
    expect(branco.cor).toBe Cor.BRANCA

  it "A classe bispo deve manter a cor", ->
    preto = new Bispo Cor.PRETA
    expect(preto.cor).toBe Cor.PRETA
    branco = new Bispo Cor.BRANCA
    expect(branco.cor).toBe Cor.BRANCA

  it "A classe Rei deve manter a cor", ->
    preto = new Rei Cor.PRETA
    expect(preto.cor).toBe Cor.PRETA
    branco = new Rei Cor.BRANCA
    expect(branco.cor).toBe Cor.BRANCA

  it "A classe Rainha deve manter a cor", ->
    preto = new Rainha Cor.PRETA
    expect(preto.cor).toBe Cor.PRETA
    branco = new Rainha Cor.BRANCA
    expect(branco.cor).toBe Cor.BRANCA