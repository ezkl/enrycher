# Enrycher

This is a stupidly simple 5 minute gem I wrote to play with the [Enrycher](http://ailab.ijs.si/tools/enrycher/) text-processing API.

## Install

`gem install enrycher` or add `gem 'enrycher'` to your Gemfile.

## Usage

    require 'enrycher'
    
    text = <<TEXT
    Confluence combines powerful online authoring capabilities, deep Office integration and an extensive plugin catalogue to help people work better together and share information effortlessly.
    TEXT

    Enrycher.process(text)
    Enrycher.print 
      #=> prints the unaltered XML response from the server. Why did I use Nokogiri? Good question.