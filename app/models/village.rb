class Village < ActiveRecord::Base
  has_many :fields

  validates_presence_of :name

  def to_param
    slug
  end

  def to_s
    name
  end
end
