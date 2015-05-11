require 'spec_helper'

describe Category do
  it { should validate_uniqueness_of(:name) }
  it { should have_many(:products) }
end
