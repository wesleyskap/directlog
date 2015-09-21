module Directlog
  class Order < Base
    def self.create!(*xml)
      call(:recebe_pedidos_notas, { 'xml' => xml, 'type' => 'DEFAULT' }).result[:wsdirectlog][:retorno]
    end

    def self.find_by_number(*xml)
      call(:consulta_status_entrega, { 'xml' => xml, 'type' => 'DEFAULT'}).result[:wsdirectlog][:retorno]
    end
  end
end
