class Address
  include Mongoid::Document

  field :street, :type => String
  field :city, :type => String
  field :state, :type => String
  field :zip, :type => String

  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true

  embedded_in :inspection, :inverse_of => :address  
end
