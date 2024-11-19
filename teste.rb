#Fornecedor

class Produto
  def initialize( nome: nil,
                  unidades_de_venda: nil,
                  nome_unidade_de_compra: nil,
                  qtd_unidade_de_compra: nil)
    @nome = nome
    @unidades_de_venda = unidades_de_venda
    @nome_unidade_de_compra = nome_unidade_de_compra
    @qtd_unidade_de_compra = qtd_unidade_de_compra
  end

  def nome
    @nome
  end

  def reabastecer_unidade_de_venda(qtd)
    @unidades_de_venda += qtd.abs
  end

  def remover_unidades_de_compra(qtd)
    unidades_de_venda_a_remover = qtd.abs * @qtd_unidade_de_compra

    if unidades_de_venda - unidades_de_venda_a_remover >= 0
      @unidades_de_venda -= (qtd.abs * @qtd_unidade_de_compra)
    else
      puts 'Quantidade de unidades de venda insuficiente'
    end
  end

  def quantidade_disponivel(unidade: 'venda')
    if unidade == 'venda'
      "Há #{unidades_de_venda} em unidade de venda disponiveis"
    else
      "Há #{unidades_de_venda / @qtd_unidade_de_compra} #{@nome_unidade_de_compra}/unidade de compra disponiveis"
    end
  end

  private

  def unidades_de_venda
    @unidades_de_venda
  end

  def unidades_de_venda=(qtd)
    @unidades_de_venda = qtd
  end
end

refrigerante_lata = Produto.new( nome: 'refrigerante lata',
                                 unidades_de_venda: 120,
                                 nome_unidade_de_compra: 'packs',
                                 qtd_unidade_de_compra: 6)

# binding.irb