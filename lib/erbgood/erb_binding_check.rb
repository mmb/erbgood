require 'erb'

module Erbgood

  class ErbBindingCheck

    def initialize(bindin, erb)
      @bindin = bindin
      @erb = erb
    end

    def error
      ERB.new(@erb).result(@bindin)
      nil
    rescue => detail
      detail
    end

  end

end
