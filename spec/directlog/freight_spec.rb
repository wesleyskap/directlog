require 'spec_helper'

describe Directlog::Freight do
  describe ".calculate" do
    it 'should return result' do
      VCR.use_cassette('directlog_calculate_result') do
        calculate_result = Directlog::Freight.calculate(weight: '', zip_code_destination: '', amount: '')
        expect(calculate_result.class).to be(Hash)
        expect(calculate_result).to have_key(:sucesso)
        expect(calculate_result).to have_key(:mensagem)
        expect(calculate_result).to have_key(:valorfrete)
        expect(calculate_result).to have_key(:prazoentrega)
      end
    end
  end
end
