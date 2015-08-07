module Directlog
  class Freight < Base
    def self.calculate(weight: nil, zip_code_destination: nil, amount: nil)
      call(:calcular_frete, { 'peso' => weight, 'cepDestino' => zip_code_destination, 'valor' => amount }).result[:directlog][:consultafrete]
    end
  end
end
