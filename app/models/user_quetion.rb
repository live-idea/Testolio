class UserQuetion < ActiveRecord::Base
  belongs_to :result_test
  has_many :choise_variants
  belongs_to :question
  accepts_nested_attributes_for :choise_variants, :allow_destroy => true
  
  def right?
    self.choise_variants.collect{|el| el.answer.is_right ? true : nil}.compact.size == self.question.answers.right.size
  end
  
end
