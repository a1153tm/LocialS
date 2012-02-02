class SexesController < ApplicationController
  # GET /sexes
  # GET /sexes.json
  def index
    @sexes = Sex.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @sexes }
    end
  end

  # GET /sexes/1
  # GET /sexes/1.json
  def show
    @sex = Sex.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @sex }
    end
  end

  # GET /sexes/new
  # GET /sexes/new.json
  def new
    @sex = Sex.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @sex }
    end
  end

  # GET /sexes/1/edit
  def edit
    @sex = Sex.find(params[:id])
  end

  # POST /sexes
  # POST /sexes.json
  def create
    @sex = Sex.new(params[:sex])

    respond_to do |format|
      if @sex.save
        format.html { redirect_to @sex, :notice => 'Sex was successfully created.' }
        format.json { render :json => @sex, :status => :created, :location => @sex }
      else
        format.html { render :action => "new" }
        format.json { render :json => @sex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sexes/1
  # PUT /sexes/1.json
  def update
    @sex = Sex.find(params[:id])

    respond_to do |format|
      if @sex.update_attributes(params[:sex])
        format.html { redirect_to @sex, :notice => 'Sex was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @sex.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sexes/1
  # DELETE /sexes/1.json
  def destroy
    @sex = Sex.find(params[:id])
    @sex.destroy

    respond_to do |format|
      format.html { redirect_to sexes_url }
      format.json { head :ok }
    end
  end
end
