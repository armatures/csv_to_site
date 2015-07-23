#!/usr/bin/ruby
require 'erb'
require 'ostruct'
namespace = OpenStruct.new(title: 'Mom Attacks', director: 'George')
template = "Title: <%= title %> \n Director: <%= director %>"
puts ERB.new(template).result(namespace.instance_eval { binding })