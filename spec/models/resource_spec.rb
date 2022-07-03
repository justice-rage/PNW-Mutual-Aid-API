require 'rails_helper'

describe Resource do
  it { should validate_presence_of :name }

  it { should validate_presence_of :category }
  it { should validate_presence_of :website }
  it { should validate_presence_of :address }
end
