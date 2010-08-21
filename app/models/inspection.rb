class Inspection
  include Mongoid::Document

  field :name, :type => String
  field :notes, :type => String
  field :started_at, :type => Time
  field :finished_at, :type => Time

  validates :name, :presence => true

  embeds_many :observables
end
