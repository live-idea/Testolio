class UtestsController < ApplicationController
  # GET /utests
  # GET /utests.xml
  def index
    @tests = Test.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @utests }
    end
  end

  def all
    @tests = Test.all
  end

  # GET /utests/1
  # GET /utests/1.xml
  def show
    @utest = Utest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @utest }
    end
  end

  # GET /utests/new
  # GET /utests/new.xml
  def new
    @utest = Utest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @utest }
    end
  end

  # GET /utests/1/edit
  def edit
    @utest = Utest.find(params[:id])
  end

  # POST /utests
  # POST /utests.xml
  def create
    @utest = Utest.new(params[:utest])

    respond_to do |format|
      if @utest.save
        flash[:notice] = 'Utest was successfully created.'
        format.html { redirect_to(@utest) }
        format.xml  { render :xml => @utest, :status => :created, :location => @utest }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @utest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /utests/1
  # PUT /utests/1.xml
  def update
    @utest = Utest.find(params[:id])

    respond_to do |format|
      if @utest.update_attributes(params[:utest])
        flash[:notice] = 'Utest was successfully updated.'
        format.html { redirect_to(@utest) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @utest.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /utests/1
  # DELETE /utests/1.xml
  def destroy
    @utest = Utest.find(params[:id])
    @utest.destroy

    respond_to do |format|
      format.html { redirect_to(utests_url) }
      format.xml  { head :ok }
    end
  end
end
