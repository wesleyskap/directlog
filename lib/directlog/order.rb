module Directlog
  class Order < Base
    def self.create!(*xml)
      call(:recebe_pedidos_notas, { 'xml' => xml, 'type' => 'DEFAULT' }).result[:wsdirectlog][:retorno]
    end
  end
end
