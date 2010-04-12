class ResultTestsController < ApplicationController
  layout "front"
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


  def coretestid
    @test= Test.find(params[:id])
  end
  
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
    
  end 
  


