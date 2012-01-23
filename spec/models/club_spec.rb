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

  end
end
