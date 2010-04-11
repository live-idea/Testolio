class Answer < ActiveRecord::Base
  belongs_to :question
  validates_presence_of :body  
  named_scope :right, :conditions=>["is_right IS TRUE"]
end
