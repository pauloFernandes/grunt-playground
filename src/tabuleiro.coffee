class Jogo
  constructor: ->
    @tabuleiro = []
    @limpaTabuleiro()
  coordenadas: (coordenada, obj)->
    [x, y] = @coordenadasMatriz coordenada
    throw new Error "Coordenada #{coordenada} Inválida" if x < 0 or y < 0
    if obj? then @tabuleiro[x][y] = obj
    @tabuleiro[x][y]
  coordenadasMatriz: (coordenada) ->
    baseNumerica   = "12345678"
    baseAlfabetica = "abcdefgh"
    y = baseAlfabetica.indexOf(coordenada.substr(0,1))
    x = baseNumerica.indexOf(coordenada.substr(1,1))
    [x,y]

  limpaTabuleiro: ->
    (@tabuleiro[i]=[]; @tabuleiro[i][j]=[] for j in [0...8]) for i in [0...8]
  inicializaPosicaoPecas: ->
    @posicaoPorCor Cor.BRANCA
    @posicaoPorCor Cor.PRETA
  posicaoPorCor: (cor)->
    if cor is Cor.BRANCA
      primeiraLinha = 0
      linhaPeoes    = 1
    else
      primeiraLinha = 7
      linhaPeoes    = 6
    @tabuleiro[primeiraLinha][0] = new Torre cor
    @tabuleiro[primeiraLinha][7] = new Torre cor
    @tabuleiro[primeiraLinha][1] = new Cavalo cor
    @tabuleiro[primeiraLinha][6] = new Cavalo cor
    @tabuleiro[primeiraLinha][2] = new Bispo cor
    @tabuleiro[primeiraLinha][5] = new Bispo cor
    @tabuleiro[primeiraLinha][3] = new Rainha cor
    @tabuleiro[primeiraLinha][4] = new Rei cor
    @tabuleiro[linhaPeoes][i] = new Peao cor for i in [0...8]
  move: (coordenadaOrigem, coordenadaDestino)->
    if not (@coordenadas(coordenadaOrigem) instanceof Peca)
      throw new Error "Não há peça a ser movida em #{coordenadaOrigem}"
    origem  = @coordenadas coordenadaOrigem
    destino = @coordenadas coordenadaDestino
    if destino instanceof Peca and origem.cor == destino.cor
      throw new Error "A casa destino já está ocupada."
    origem.validaMovimento (@coordenadasMatriz coordenadaOrigem),
    (@coordenadasMatriz coordenadaDestino)
    @coordenadas coordenadaOrigem, []
    @coordenadas coordenadaDestino, origem