class AnswersController < ApplicationController  
  before_filter :load_parent
  def load_parent
    @test = Test.find_by_id(params[:test_id])
    @question = @test.questions.find_by_id(params[:question_id])
  end
  
  def index
    @answers = @question.answers

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @answers }
    end
  end

  def show
    @answer = @question.answer.find_by_id(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @answer }
    end
  end

  def new
    @answer = @question.answer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @answer }
    end
  end

  def edit
    @answer = Answer.find(params[:id])
    render :layout => false    
  end

  def create
    @answer = @question.answers.new(params[:answer])

    respond_to do |format|
      if @answer.save
        flash[:notice] = 'Answer was successfully created.'
        format.html { redirect_to test_question_path(@test, @question) }
        format.xml  { render :xml => @answer, :status => :created, :location => @answer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @answer = Answer.find(params[:id])

    respond_to do |format|
      if @answer.update_attributes(params[:answer])
        flash[:notice] = 'Answer was successfully updated.'
        format.html { render :partial=>"questions/answer", :locals=>{:answer => @answer} }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @answer = @question.answers.find_by_id(params[:id])
    @answer.destroy
    
    render :update do |answer|
      answer.visual_effect :fade, "answer_#{@answer.id}"
    end    
  end
end
