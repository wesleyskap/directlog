require 'spec_helper'

describe Directlog::Order do
  describe ".create!" do
    it 'should create orders' do
      VCR.use_cassette('directlog_create_orders') do
        create_result = Directlog::Order.create!(File.read('./spec/fixtures/directlog_lotes.xml'))
        expect(create_result.class).to be(Hash)
        expect(create_result).to have_key(:protocolo)
        expect(create_result).to have_key(:pedidos)
        expect(create_result[:pedidos]).to have_key(:pedido)
        expect(create_result[:pedidos][:pedido]).to have_key(:numeropedido)
        expect(create_result[:pedidos][:pedido]).to have_key(:notafiscal)
        expect(create_result[:pedidos][:pedido]).to have_key(:mensagens)
        expect(create_result[:pedidos][:pedido][:mensagens]).to have_key(:mensagem)
        expect(create_result[:pedidos][:pedido][:mensagens][:mensagem]).to include('Pedido cadastrado com sucesso!')
      end
    end
  end
end
