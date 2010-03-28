class ResultTestsController < ApplicationController
  def index
    @tests = Test.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @result_tests }
    end
  end

  def show
    @result_test = ResultTest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @result_test }
    end
  end
end