require 'spec_helper'

describe Journal do
  context 'Testing the built in normalizers' do
    # default normalization [ :strip, :blank ]
    it { should normalize_attribute(:name) }
    it { should normalize_attribute(:name).from(' Physical Review ').to('Physical Review') }
    it { should normalize_attribute(:name).from('   ').to(nil) }
  end
end
