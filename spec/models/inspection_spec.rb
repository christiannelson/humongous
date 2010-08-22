require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Inspection do
  it { should have_fields(:name, :notes, :started_at, :finished_at) }
  it { should embed_one(:address) }
  it { should embed_many(:observables) }
end
