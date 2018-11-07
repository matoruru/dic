#!/usr/bin/env ruby

require 'colorize'

def lessdict(word)
  system "dict \"#{word}\"|less"
end

def sanitize(word)
  sanitizedword=""
  word.each_char {|c|
    sanitizedword << case c
    when '"'
      "double quote"
    else
      c
    end
  }
  return sanitizedword
end

if ARGV.empty?
  while true
    print "read".green, "> "
    word = sanitize(gets.chop)
    if word.empty?
      exit
    end
    lessdict word
  end
end

lessdict sanitize(ARGV[0])
