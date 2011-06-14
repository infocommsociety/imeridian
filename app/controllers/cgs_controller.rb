class CgsController < ApplicationController
  # GET /cgs
  # GET /cgs.xml
  def index
    @cgs = Cg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cgs }
    end
  end

  # GET /cgs/1
  # GET /cgs/1.xml
  def show
    @cg = Cg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @cg }
    end
  end

  # GET /cgs/new
  # GET /cgs/new.xml
  def new
    @cg = Cg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @cg }
    end
  end

  # GET /cgs/1/edit
  def edit
    @cg = Cg.find(params[:id])
  end

  # POST /cgs
  # POST /cgs.xml
  def create
    @cg = Cg.new(params[:cg])

    respond_to do |format|
      if @cg.save
        format.html { redirect_to(@cg, :notice => 'Cg was successfully created.') }
        format.xml  { render :xml => @cg, :status => :created, :location => @cg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @cg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cgs/1
  # PUT /cgs/1.xml
  def update
    @cg = Cg.find(params[:id])

    respond_to do |format|
      if @cg.update_attributes(params[:cg])
        format.html { redirect_to(@cg, :notice => 'Cg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @cg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cgs/1
  # DELETE /cgs/1.xml
  def destroy
    @cg = Cg.find(params[:id])
    @cg.destroy

    respond_to do |format|
      format.html { redirect_to(cgs_url) }
      format.xml  { head :ok }
    end
  end
end
