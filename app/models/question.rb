class Question < ActiveRecord::Base
  belongs_to :test
  has_many :answers, :dependent => :destroy
end
