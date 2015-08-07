require "savon"
require "tiny_tds"
require "directlog/base"
require "directlog/response"
require "directlog/freight"
require "directlog/order"

module Directlog
  def self.config!(config)
    @config = config
  end

  def self.config
    @config
  end
end
