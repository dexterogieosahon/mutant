require 'spec_helper'

describe Mutant::Mutator::Literal::Fixnum,'.each' do
  let(:random_fixnum) { 5 }

  context 'fixnum literal' do
    let(:source) { '10' }

    let(:mutations) do
      %W(nil 0 1 #{random_fixnum}) << [:lit, -10]
    end

    before do
      Mutant::Random.stub(:fixnum => random_fixnum)
    end

    it_should_behave_like 'a mutation enumerator method'
  end
end