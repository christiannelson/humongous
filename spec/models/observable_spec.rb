require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Observable do
  it { should have_fields(:name, :notes) }
  it { should be_embedded_in(:inspection).as_inverse_of(:observables) }
  it { should embed_many(:observables) }
  it { should be_embedded_in(:observable).as_inverse_of(:observables) }
end
