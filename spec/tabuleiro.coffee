describe "Tabuleiro de Xadrez", ()->
  jogo = new Jogo()
  it "Todo tabuleiro de Xadrez é quadrado, possuindo
 8 linhas por 8 colunas.", ()->
    expect(jogo.tabuleiro().length).toBe 8
    jogo.tabuleiro.forEach (linha)->
      expect(linha.length).toBe 8