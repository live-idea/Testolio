class ResultTestsController < ApplicationController
  layout "front"
  before_filter :load_parent
  def load_parent
    @result_test = ResultTest.find_by_id(params[:result_test_id])
    @test = @result_test
  end
  
  def index
    @tests = Test.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @result_tests }
    end
  end
  
  def new
    @test = Test.find_by_id(params[:test_id])
    @result_test = ResultTest.new
  end

  def show    
    @result_test = ResultTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @result_test }
    end
  end 
  
  def create
    @result_test = ResultTest.create(params[:result_test])
    @questions = @result_test.test.questions
    @questions.each do |q|
      @user_question = UserQuetion.new({:question => q, :result_test => @result_test})   
      @user_question.save      
        q.answers.each do |a|
          @choise_variants = ChoiseVariant.create({:answer => a, :user_quetion => @user_question})
        end
    end 
    redirect_to(result_test_path(@result_test))
  end 
  
  def update
    @result_test = ResultTest.find_by_id(params[:id])
    @result_test.update_attributes(params[:result_test])
    redirect_to result_result_test_path(@result_test)
  end
  
  def result
    @result_test = ResultTest.find_by_id(params[:id])
    @result_test.test.questions    
    @points = @result_test.check
  end
  
end

