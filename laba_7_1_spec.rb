# frozen_string_literal: true

require_relative 'laba_7_1_main'
require 'faker'

RSpec.describe Files do
  describe '#rewrite' do
    context 'when param is empty' do
      let(:first) { ('b'..'z').to_a.sample }
      let(:second) { ('b'..'z').to_a.sample }
      let(:result) { [first, second] }
      it 'should create new date' do
        filef = File.new('file_F.txt', 'w+')
        fileh = File.new('file_H.txt', 'w+')
        filef.puts('a')
        filef.puts(first)
        filef.puts('a')
        filef.puts(second)
        filef.close
        expect(described_class.rewrite('file_F.txt', fileh, 'file_H.txt')).to eq(result)
      end
    end
  end
end
