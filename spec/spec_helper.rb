require 'rubygems'
require 'bundler/setup'
require 'directlog'
require 'pry'
require 'vcr'
require 'webmock'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
end

RSpec.configure do |c|
end

Directlog.config! 'ws' => YAML.load_file("spec/config.yml")['ws']
