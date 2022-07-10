class Seed

  def self.begin
    seed = Seed.new
    seed.generate_resources
  end
  
  def generate_resources
    100.times do |i|

      category_type = ['food', 'housing', 'education', 'lgbtq', 'animal', 'health'].sample

      resource = Resource.create!(
          name: (Faker::App.name),
          website: (Faker::Internet.domain_name), 
          category: (category_type),
          address: (Faker::Address.city)
      )

      puts "Resource: #{i},
      name: #{resource.name}, 
      website: #{resource.website}, 
      category: #{resource.category}, 
      address: #{resource.address}"
    end
  end
end
  
# Seed.begin
