class Field < ActiveRecord::Base
  belongs_to :user
  belongs_to :village

  attr_accessible :name, :village_id

  validates_presence_of :name
  validates_presence_of :user
  validates_presence_of :village
end
