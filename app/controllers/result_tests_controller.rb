class ResultTestsController < ApplicationController
   # GET /utests
  # GET /utests.xml
  def index
    @tests = Test.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @result_tests }
    end
  end

  def all
    @tests = Test.all
  end

  
end
