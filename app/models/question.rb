class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers, :dependent => :destroy
  validates_presence_of :question
  validates_uniqueness_of :question
end
