class DisclaimersController < ApplicationController
  # GET /disclaimers
  # GET /disclaimers.xml
  def index
    @disclaimers = Disclaimer.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @disclaimers }
    end
  end

  # GET /disclaimers/1
  # GET /disclaimers/1.xml
  def show
    @disclaimer = Disclaimer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @disclaimer }
    end
  end

  # GET /disclaimers/new
  # GET /disclaimers/new.xml
  def new
    @disclaimer = Disclaimer.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @disclaimer }
    end
  end

  # GET /disclaimers/1/edit
  def edit
    @disclaimer = Disclaimer.find(params[:id])
  end

  # POST /disclaimers
  # POST /disclaimers.xml
  def create
    @disclaimer = Disclaimer.new(params[:disclaimer])

    respond_to do |format|
      if @disclaimer.save
        format.html { redirect_to(@disclaimer, :notice => 'Disclaimer was successfully created.') }
        format.xml  { render :xml => @disclaimer, :status => :created, :location => @disclaimer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @disclaimer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /disclaimers/1
  # PUT /disclaimers/1.xml
  def update
    @disclaimer = Disclaimer.find(params[:id])

    respond_to do |format|
      if @disclaimer.update_attributes(params[:disclaimer])
        format.html { redirect_to(@disclaimer, :notice => 'Disclaimer was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @disclaimer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /disclaimers/1
  # DELETE /disclaimers/1.xml
  def destroy
    @disclaimer = Disclaimer.find(params[:id])
    @disclaimer.destroy

    respond_to do |format|
      format.html { redirect_to(disclaimers_url) }
      format.xml  { head :ok }
    end
  end
end
