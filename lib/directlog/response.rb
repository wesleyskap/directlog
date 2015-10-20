require 'forwardable'

module Directlog
  class Response
    include Enumerable
    extend Forwardable
    def_delegators :@savon, :to_s

    def initialize(method, savon)
      @method = method
      @savon = savon
    end

    def result
      @result = doc
    end

    def nresult
      xml_parser(node_response[:xml])
    end

    private

    def doc
      node_result ? xml_parser(node_result) : xml_parser(node_response[:xml])
    end

    def xml_parser(xml)
      Nori.new(convert_tags_to: lambda { |tag| tag.snakecase.to_sym }).parse(xml)
    end

    def node_response
      @savon.hash[:envelope][:body]["#{@method}_response".to_sym]
    end

    def node_result
      node_response["#{@method}_result".to_sym]
    end
  end
end
