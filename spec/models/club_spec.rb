require 'spec_helper'

describe Club do
  
  context 'when validating' do
    before{ @club = Club.new }

    context 'when all attributes are supplied' do
      subject { @club = build(:club)}
      it { should be_valid }
    end

    subject { @club }

    it { should have_errors_on(:name) }

    context 'with sheets set to nil' do
      it { should have_errors_on(:sheets) }
      it 'should have an error when sheets is not numeric' do
        @club.sheets = 'three'
        should have_errors_on(:sheets)
      end
      it 'should have an error when sheets less than 0' do
        @club.sheets = -99
        should have_errors_on(:sheets)
      end
    end
  end
end
