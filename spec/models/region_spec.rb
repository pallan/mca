require 'spec_helper'

describe Region do
  context 'when validating' do
    before{ @region = Region.new }

    context 'when all attributes are supplied' do
      subject { @region = build(:region)}
      it { should be_valid }
    end

    subject { @region }

    it { should have_errors_on(:name) }
  end
end
