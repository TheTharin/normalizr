require 'spec_helper'

describe Publisher do
  context 'using the built in phone normalizer' do
    it { should normalize_attribute(:phone_number).from('no-numbers-here').to(nil) }
    it { should normalize_attribute(:phone_number).from('1.877.987.9875').to('18779879875') }
    it { should normalize_attribute(:phone_number).from('+ 1 (877) 987-9875').to('18779879875') }
  end

  context 'overloaded writer method' do
    subject { Publisher.new(name: 'Mike') }
    it { should normalize_attribute(:name).from('').to(nil) }

    describe 'custom_writer' do
      subject { Publisher.new(name: 'Mike').custom_writer }
      it { should be(true) }
    end
  end
end
