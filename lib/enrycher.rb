# encoding: UTF-8

require "typhoeus"
require "nokogiri"
require "pp"

module Enrycher  
  class << self
    attr_accessor :text, :doc
    
    def process text
      @text     = text
      parse if make_request.success?
    end
    
    def make_request
      @response = Typhoeus::Request.post("http://enrycher.ijs.si/run", :body => @text)
    end
    
    def parse
      @doc = Nokogiri::XML(@response.body)
    end
    
    def print
      puts @doc
    end
    
    def pretty_print
      pp @doc
    end
  end
end
