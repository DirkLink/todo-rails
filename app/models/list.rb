class List < ActiveRecord::Base
  belongs_to :user
  has_many :tasks

  # include Enumerable
  # def each; ...; end

  validates_presence_of :user, :name
end
