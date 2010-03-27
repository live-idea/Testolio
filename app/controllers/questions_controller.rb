class QuestionsController < ApplicationController
  before_filter :load_parent
  def load_parent
    @test = Test.find_by_id(params[:test_id])
  end
  
  def index
    @questions = @test.questions

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @questions }
    end
  end

  def show
    @question = @test.questions.find_by_id(params[:id])
    @answer = Answer.new
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @question }
    end
  end

  def new
    @question = Question.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @question }
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def create
    @question = @test.questions.new(params[:question])

    respond_to do |format|
      if @question.save
        flash[:notice] = 'Question was successfully created.'
        format.html { redirect_to(test_questions_path(@test))}
        format.xml  { render :xml => @question, :status => :created, :location => @question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @question = @test.questions.find(params[:id])

    respond_to do |format|
      if @question.update_attributes(params[:question])
        flash[:notice] = 'Question was successfully updated.'
        format.html { redirect_to(test_question_path(@test, @question)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @question.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    respond_to do |format|
      format.html { redirect_to(test_questions_path(@test)) }
      format.xml  { head :ok }
    end
  end
end
