class AnswersController < ApplicationController  
  before_filter :load_parent
  def load_parent
    @question = Test.questions.find_by_id(params[:question_id])
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
  end

  def create
    @answer = @question.answers.new(params[:answer])

    respond_to do |format|
      if @answer.save
        flash[:notice] = 'Answer was successfully created.'
        format.html { redirect_to(@answer) }
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
        format.html { redirect_to(@answer) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @answer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    respond_to do |format|
      format.html { redirect_to(answers_url) }
      format.xml  { head :ok }
    end
  end
end
