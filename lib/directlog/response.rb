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

    private

    def doc
      xml_parser(@savon.hash[:envelope][:body]["#{@method}_response".to_sym]["#{@method}_result".to_sym])
    end

    def xml_parser(xml)
      Nori.new(convert_tags_to: lambda { |tag| tag.snakecase.to_sym }).parse(xml)
    end
  end
end


