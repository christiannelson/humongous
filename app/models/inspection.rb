class Inspection
  include Mongoid::Document

  field :name, :type => String
  field :notes, :type => String
  field :started_at, :type => Time
  field :finished_at, :type => Time

  validates :name, :presence => true

  embeds_one :address
  embeds_many :observables

  index :finished_at

  def total_observables_count
    observables.count + observables.collect { |o| o.total_observables_count }.sum
  end
end
