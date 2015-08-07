# Directlog

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'directlog'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install directlog

## Usage
Calculete Freight

```ruby
Directlog::Freight.calculate(weight: '', zip_code_destination: '', amount: '')

=> {:consultafrete=>
    {:sucesso=>"False",
    :mensagem=>"A consulta retornou vazio, porem sem erros. Verifique as informaÃ§Ãµes enviadas>",
    :valorfrete=>"0.00",
    :prazoentrega=>nil}}
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/directlog-ruby/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request


## Code Status

[![Build Status](https://travis-ci.org/wesleyskap/directlog.svg?branch=master)](https://travis-ci.org/wesleyskap/directlog)
