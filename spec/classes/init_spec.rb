require 'spec_helper'
describe 'gitsource' do

  context 'with defaults for all parameters' do
    it { should contain_class('gitsource') }
  end
end
