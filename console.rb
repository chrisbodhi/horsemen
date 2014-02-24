#!/usr/bin/env ruby

require 'irb'
require 'irb/completion'

require 'rubygems'
require 'bundler/setup'

require ENV['DATABASE_URL']
require 'horsemen'

IRB.start
