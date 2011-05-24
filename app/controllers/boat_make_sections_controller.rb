class BoatMakeSectionsController < ApplicationController
  # GET /boat_make_sections
  # GET /boat_make_sections.xml
  def index
    @boat_make_sections = BoatMakeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boat_make_sections }
    end
  end

  # GET /boat_make_sections/1
  # GET /boat_make_sections/1.xml
  def show
    @boat_make_section = BoatMakeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boat_make_section }
    end
  end

  # GET /boat_make_sections/new
  # GET /boat_make_sections/new.xml
  def new
    @boat_make_section = BoatMakeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boat_make_section }
    end
  end

  # GET /boat_make_sections/1/edit
  def edit
    @boat_make_section = BoatMakeSection.find(params[:id])
  end

  # POST /boat_make_sections
  # POST /boat_make_sections.xml
  def create
    @boat_make_section = BoatMakeSection.new(params[:boat_make_section])

    respond_to do |format|
      if @boat_make_section.save
        format.html { redirect_to(@boat_make_section, :notice => 'Boat make section was successfully created.') }
        format.xml  { render :xml => @boat_make_section, :status => :created, :location => @boat_make_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boat_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boat_make_sections/1
  # PUT /boat_make_sections/1.xml
  def update
    @boat_make_section = BoatMakeSection.find(params[:id])

    respond_to do |format|
      if @boat_make_section.update_attributes(params[:boat_make_section])
        format.html { redirect_to(@boat_make_section, :notice => 'Boat make section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boat_make_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boat_make_sections/1
  # DELETE /boat_make_sections/1.xml
  def destroy
    @boat_make_section = BoatMakeSection.find(params[:id])
    @boat_make_section.destroy

    respond_to do |format|
      format.html { redirect_to(boat_make_sections_url) }
      format.xml  { head :ok }
    end
  end
end
