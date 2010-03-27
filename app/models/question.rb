class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers, :dependent => :destroy
  validates_presence_of :quest_text
  validates_uniqueness_of :quest_text
end
