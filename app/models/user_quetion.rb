class UserQuetion < ActiveRecord::Base
  belongs_to :result_test
  has_many :choise_variants
  belongs_to :question
end
