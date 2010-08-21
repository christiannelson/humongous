# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

include Faker

NAME = '3928 Cesar Chavez Street'.freeze
Inspection.where(:name => NAME).first.destroy if Inspection.where(:name => NAME).present?
i = Inspection.create!(:name => NAME, :notes => Lorem.sentence(6), :started_at => 352.minutes.ago, :finished_at => 171.minutes.ago)
o = i.observables.create(:name => 'Front Porch', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Stairs', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Railing', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Entrance', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Light', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Living Room', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Door', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Windows', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Dining Room', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Cabinets', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Kitchen', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Sink', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Refrigerator', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Stovetop', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Oven', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Dishwasher', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Master Bedroom', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Windows', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Lights', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Closet', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Bedroom', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Windows', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Lights', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Closet', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Bathroom', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Shower', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Sink', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Medicine Cabinet', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Sunroom', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Windows', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Shelving', :notes => Lorem.sentence(3))

o = i.observables.create(:name => 'Pantry', :notes => Lorem.sentence(6))
o.observables.create(:name => 'Floors', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Walls', :notes => Lorem.sentence(3))
o.observables.create(:name => 'Cabinets', :notes => Lorem.sentence(3))
