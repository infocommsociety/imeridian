class HomeworksController < ApplicationController
  # GET /homeworks
  # GET /homeworks.xml
  def index
    @homeworks = Homework.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @homeworks }
    end
  end

  # GET /homeworks/1
  # GET /homeworks/1.xml
  def show
    @homework = Homework.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @homework }
    end
  end

  # GET /homeworks/new
  # GET /homeworks/new.xml
  def new
    @homework = Homework.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @homework }
    end
  end

  # GET /homeworks/1/edit
  def edit
    @homework = Homework.find(params[:id])
  end

  # POST /homeworks
  # POST /homeworks.xml
  def create
    @homework = Homework.new(params[:homework])

    respond_to do |format|
      if @homework.save
        format.html { redirect_to(@homework, :notice => 'Homework was successfully created.') }
        format.xml  { render :xml => @homework, :status => :created, :location => @homework }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @homework.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /homeworks/1
  # PUT /homeworks/1.xml
  def update
    @homework = Homework.find(params[:id])

    respond_to do |format|
      if @homework.update_attributes(params[:homework])
        format.html { redirect_to(@homework, :notice => 'Homework was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @homework.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /homeworks/1
  # DELETE /homeworks/1.xml
  def destroy
    @homework = Homework.find(params[:id])
    @homework.destroy

    respond_to do |format|
      format.html { redirect_to(homeworks_url) }
      format.xml  { head :ok }
    end
  end
end
