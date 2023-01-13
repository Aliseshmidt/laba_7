# frozen_string_literal: true

require_relative 'laba_7_2_main'
require 'faker'

RSpec.describe 'Point and Circle' do
  describe '#rewrite' do
    context 'when param is empty' do
      res1 = [-0.9999987317275395, 0.0015926529164868282]
      res2 = [-0.9999987317275395, 0.0015926529164868282, 45.0]
      let(:circle) { Circle.new(1, 3.14, 45) }
      it 'should create' do
        expect(Circle.new(1, 3.14, 45).show).to eq(res2)
      end

      it 'should create' do
        expect(Point.new(1, 3.14).show).to eq(res1)
      end

      it 'should create' do
        expect(circle.is_a?(Point)).to be(true)
      end
    end
  end
end
