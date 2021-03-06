class BoatTotalOwnersController < ApplicationController
  # GET /boat_total_owners
  # GET /boat_total_owners.xml
  def index
    @boat_total_owners = BoatTotalOwner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_total_owners }
    end
  end

  # GET /boat_total_owners/1
  # GET /boat_total_owners/1.xml
  def show
    @boat_total_owner = BoatTotalOwner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_total_owner }
    end
  end

  # GET /boat_total_owners/new
  # GET /boat_total_owners/new.xml
  def new
    @boat_total_owner = BoatTotalOwner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_total_owner }
    end
  end

  # GET /boat_total_owners/1/edit
  def edit
    @boat_total_owner = BoatTotalOwner.find(params[:id])
  end

  # POST /boat_total_owners
  # POST /boat_total_owners.xml
  def create
    @boat_total_owner = BoatTotalOwner.new(params[:boat_total_owner])

    respond_to do |format|
      if @boat_total_owner.save
        format.html { redirect_to(@boat_total_owner, :notice => 'Boat total owner was successfully created.') }
        format.xml  { render :xml => @boat_total_owner, :status => :created, :location => @boat_total_owner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_total_owners/1
  # PUT /boat_total_owners/1.xml
  def update
    @boat_total_owner = BoatTotalOwner.find(params[:id])

    respond_to do |format|
      if @boat_total_owner.update_attributes(params[:boat_total_owner])
        format.html { redirect_to(@boat_total_owner, :notice => 'Boat total owner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_total_owner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_total_owners/1
  # DELETE /boat_total_owners/1.xml
  def destroy
    @boat_total_owner = BoatTotalOwner.find(params[:id])
    @boat_total_owner.destroy

    respond_to do |format|
      format.html { redirect_to(boat_total_owners_url) }
      format.xml  { head :ok }
    end
  end
end
