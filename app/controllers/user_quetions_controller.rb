class UserQuetionsController < ApplicationController
  layout "front"  
  before_filter :load_parent
  def load_parent
    @result_test = ResultTest.find_by_id(params[:result_test_id])
    @test = @result_test.test
  end
    
  def index
    @questions = @result_test.test.questions
    @first_question = @questions.find(:first) 
  end
  
  def show
    @questions = @result_test.test.questions
    @first = @questions.find(:first)
    @last = @questions.find(:last)
  end

end
