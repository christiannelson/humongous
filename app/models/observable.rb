class Observable
  include Mongoid::Document

  field :name, :type => String
  field :notes, :type => String

  embedded_in :inspection, :inverse_of => :observables
  embeds_many :observables
  embedded_in :observable, :inverse_of => :observables
end
