class ResultTest < ActiveRecord::Base
  belongs_to :test
  has_many :user_quetions
end
