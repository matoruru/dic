#!/usr/bin/env ruby

require 'colorize'

def lessdict(word)
  system "dict #{word}|less"
end

if ARGV.empty?
  while true
    print "read".green, "> "
    word = gets.chop
    if word.empty?
      exit
    end
    lessdict word
  end
end

lessdict ARGV[0]
