FactoryBot.define do 
  factory(:resource) do
    name {Faker::Company.name}
    website {Faker::Internet.domain_name}
    category {Faker::IndustrySegments.sector}
    address {Faker::Address.street_address}

  end
end
