class Inspection
  include Mongoid::Document

  field :name, :type => String
  field :notes, :type => String
  field :started_at, :type => Time
  field :finished_at, :type => Time
  field :total_observables, :type => Integer

  attr_protected :total_observables

  validates :name, :presence => true

  embeds_one :address
  embeds_many :observables

  index :finished_at

  before_save :calculate_total_observables

  private
  
  def calculate_total_observables
    self.total_observables = observables.collect { |o| count_observables(o) }.sum
  end

  def count_observables(observable)
    observable.observables.collect { |o| count_observables(o) }.sum + 1
  end
end
