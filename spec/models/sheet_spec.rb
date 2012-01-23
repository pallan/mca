require 'spec_helper'

describe Sheet do
  context 'when validating' do
    before{ @sheet = Sheet.new }

    context 'when all attributes are supplied' do
      subject { @sheet = build(:sheet)}
      it { should be_valid }
    end

    subject { @sheet }

    it { should have_errors_on(:number) }
    context 'with number set to nil' do
      it { should have_errors_on(:number) }
      it 'should have an error when number is not numeric' do
        @sheet.number = 'three'
        should have_errors_on(:number)
      end
      it 'should have an error when number less than 0' do
        @sheet.number = -99
        should have_errors_on(:number)
      end
    end
    
  end
end
