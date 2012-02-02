class AgesController < ApplicationController
  # GET /ages
  # GET /ages.json
  def index
    @ages = Age.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @ages }
    end
  end

  # GET /ages/1
  # GET /ages/1.json
  def show
    @age = Age.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @age }
    end
  end

  # GET /ages/new
  # GET /ages/new.json
  def new
    @age = Age.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @age }
    end
  end

  # GET /ages/1/edit
  def edit
    @age = Age.find(params[:id])
  end

  # POST /ages
  # POST /ages.json
  def create
    @age = Age.new(params[:age])

    respond_to do |format|
      if @age.save
        format.html { redirect_to @age, :notice => 'Age was successfully created.' }
        format.json { render :json => @age, :status => :created, :location => @age }
      else
        format.html { render :action => "new" }
        format.json { render :json => @age.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ages/1
  # PUT /ages/1.json
  def update
    @age = Age.find(params[:id])

    respond_to do |format|
      if @age.update_attributes(params[:age])
        format.html { redirect_to @age, :notice => 'Age was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @age.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ages/1
  # DELETE /ages/1.json
  def destroy
    @age = Age.find(params[:id])
    @age.destroy

    respond_to do |format|
      format.html { redirect_to ages_url }
      format.json { head :ok }
    end
  end
end
