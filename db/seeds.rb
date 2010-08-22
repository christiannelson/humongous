# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).


class Array
  # If +number+ is greater than the size of the array, the method
  # will simply return the array itself sorted randomly
  def randomly_pick(number)
    sort_by{ rand }.slice(0...number)
  end
end

DEFAULT_ITEMS = [
  'Walls',
  'Floor',
  'Ceiling',
  'Windows',
  'Lights'
]

SPACES = {
  'Living Room' => [],
  'Kitchen' => ['Stove', 'Oven', 'Microwave', 'Sink', 'Disposal', 'Refridgerator', 'Counters', 'Dish Washer'],
  'Bathroom' => ['Sink', 'Toilet', 'Tub', 'Shower'],
  'Master Bedroom' => ['Closet'],
  'Dining Room' => [],
  'Hallway' => [],
  'Sun room' => [],
  'Office' => [],
  'Pantry' => ['Shelves'],
  'Side Bedroom' => ['Closet'],
  'Garage' => ['Door', 'Opener'],
  'Back Bedroom' => ['Closet'],
  'Attic' => [],
  'Storage' => ['Shelves'],
  'Kids Bedroom' => ['Closet'],
  'Laundry' => ['Washer', 'Dryer', 'Sink'],
  'Hallway' => [],
  'Foyer' => [],
  'Fainting Room' => []
}

def create_inspections(count = 50)
  count.times do |i|
    inspection = Inspection.new(:notes => Faker::Lorem.sentence(10), :started_at => (5*count+rand(count)).minutes.ago, :finished_at => (4*count+rand(count)).minutes.ago)
    inspection.build_address(:street => Faker::Address.street_address, :city => Faker::Address.city, :zip => Faker::Address.zip_code)
    inspection.name = [inspection.address.street, inspection.address.city, inspection.address.zip].join(', ')

    spaces_names = SPACES.keys.randomly_pick(3 + rand(SPACES.keys.length - 3))

    spaces_names.each do |name|
      o = inspection.observables.build(:name => name, :notes => Faker::Lorem.sentence(rand(8)))
      (DEFAULT_ITEMS + SPACES[name]).each do |item|
        o.observables.build(:name => item, :notes => Faker::Lorem.sentence(rand(6)))
      end
    end

    inspection.save!
  end
end

Inspection.destroy_all

create_inspections(50)
