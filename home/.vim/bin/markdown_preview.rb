#!/usr/bin/env ruby

require 'rubygems'
require 'rdiscount'

require 'pp'
require 'pathname'

file = Pathname(ARGV[0]).expand_path

tmp = Pathname("~/tmp").expand_path + "preview-#{file.basename('.md')}.html"

tmp.open('w') {|f| f << RDiscount.new(file.read).to_html}

system("open #{tmp}")
