class Observable
  include Mongoid::Document

  CONDITIONS = ['new', 'like-new', 'used', 'damaged'].freeze

  field :name, :type => String
  field :condition, :type => String
  field :notes, :type => String

  validates :name, :presence => true
  validates :condition, :inclusion => {:in => CONDITIONS}

  embedded_in :inspection, :inverse_of => :observables
  embeds_many :observables
  embedded_in :observable, :inverse_of => :observables

  def total_observables_count
    observables.count + observables.collect { |o| o.total_observables_count }.sum
  end
end
