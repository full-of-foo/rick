$:.unshift File.expand_path('../../lib', __FILE__)
require 'rick'

require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!
