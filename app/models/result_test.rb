class ResultTest < ActiveRecord::Base
  belongs_to :test
  has_many :user_quetions  
  accepts_nested_attributes_for :user_quetions, :allow_destroy => true
  
  def check
    points = 0     
    self.user_quetions.each do |q|
      points += 1 if q.right?
    end 
    update_attribute :result, points
    self.result
  end
  
end
