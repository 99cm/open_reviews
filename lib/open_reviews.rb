require 'open_core'
require 'open_reviews/engine'
require 'open_reviews/version'
require 'open_auth_devise'
require 'sass/rails'

module Spree
  module Reviews
    module_function

    def config(*)
      yield(Spree::Reviews::Config)
    end
  end
end