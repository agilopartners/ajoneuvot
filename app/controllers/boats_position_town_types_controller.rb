class BoatsPositionTownTypesController < ApplicationController
  # GET /boats_position_town_types
  # GET /boats_position_town_types.xml
  def index
    @boats_position_town_types = BoatsPositionTownType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boats_position_town_types }
    end
  end

  # GET /boats_position_town_types/1
  # GET /boats_position_town_types/1.xml
  def show
    @boats_position_town_type = BoatsPositionTownType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boats_position_town_type }
    end
  end

  # GET /boats_position_town_types/new
  # GET /boats_position_town_types/new.xml
  def new
    @boats_position_town_type = BoatsPositionTownType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boats_position_town_type }
    end
  end

  # GET /boats_position_town_types/1/edit
  def edit
    @boats_position_town_type = BoatsPositionTownType.find(params[:id])
  end

  # POST /boats_position_town_types
  # POST /boats_position_town_types.xml
  def create
    @boats_position_town_type = BoatsPositionTownType.new(params[:boats_position_town_type])

    respond_to do |format|
      if @boats_position_town_type.save
        format.html { redirect_to(@boats_position_town_type, :notice => 'Boats position town type was successfully created.') }
        format.xml  { render :xml => @boats_position_town_type, :status => :created, :location => @boats_position_town_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boats_position_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boats_position_town_types/1
  # PUT /boats_position_town_types/1.xml
  def update
    @boats_position_town_type = BoatsPositionTownType.find(params[:id])

    respond_to do |format|
      if @boats_position_town_type.update_attributes(params[:boats_position_town_type])
        format.html { redirect_to(@boats_position_town_type, :notice => 'Boats position town type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boats_position_town_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boats_position_town_types/1
  # DELETE /boats_position_town_types/1.xml
  def destroy
    @boats_position_town_type = BoatsPositionTownType.find(params[:id])
    @boats_position_town_type.destroy

    respond_to do |format|
      format.html { redirect_to(boats_position_town_types_url) }
      format.xml  { head :ok }
    end
  end
end
