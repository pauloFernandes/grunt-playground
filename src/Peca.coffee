class Peca
  X : 0
  Y : 1
  constructor: (@cor)->
  validaMovimento: (origem, destino)->

class Peao extends Peca

class Torre extends Peca
  validaMovimento: (origem, destino)->
    if origem[@X] isnt destino[@X] and origem[@Y] isnt destino[@Y]
      throw new Error "Movimento inválido para uma Torre."

class Cavalo extends Peca

class Bispo extends Peca
  validaMovimento: (origem, destino)->
    if Math.abs(origem[@X]-destino[@X]) isnt Math.abs(origem[@Y]-destino[@Y])
      throw new Error "Movimento inválido para um Bispo."

class Rei extends Peca
  validaMovimento: (origem, destino)->
    movimentoInvalido = (Math.abs(origem[@X]-destino[@X]) > 1) or
    (Math.abs(origem[@Y]-destino[@Y]) > 1)
    if movimentoInvalido
      throw new Error "Movimento inválido para um Rei."

class Rainha extends Peca
  validaMovimento: (origem, destino)->
    # Movimento inválido horizontal
    movHorizontal = origem[@X] != destino[@X] and origem[@Y] != destino[@Y]
    # Movimento inválido vertical
    movVertical = Math.abs(origem[@X]-destino[@X]) !=
    Math.abs(origem[@Y]-destino[@Y])
    if movHorizontal and movVertical
      throw new Error "Movimento inválido para uma Rainha."