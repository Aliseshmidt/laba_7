# frozen_string_literal: true

require_relative 'laba_7_1_main'

filef = File.new('file_F.txt', 'w+')
fileh = File.new('file_H.txt', 'w+')

puts 'Input 4 symbols'
(1..4).map { filef.puts(gets.chomp) }

filef.close

puts 'File F: '
p File.readlines('file_F.txt').map(&:chomp)

Files.rewrite('file_F.txt', fileh, 'file_H.txt')

puts 'File H: '
p File.readlines('file_H.txt').map(&:chomp)

filef.close
fileh.close
