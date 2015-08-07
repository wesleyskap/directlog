module Directlog
  class Freight < Base
    def self.calculate(weight:, zip_code_destination:, amount:)
      call(:calcular_frete, { 'peso' => weight, 'cepDestino' => zip_code_destination, 'valor' => amount }).result[:directlog][:consultafrete]
    end
  end
end
