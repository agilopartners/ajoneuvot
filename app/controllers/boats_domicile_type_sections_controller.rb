class BoatsDomicileTypeSectionsController < ApplicationController
  # GET /boats_domicile_type_sections
  # GET /boats_domicile_type_sections.xml
  def index
    @boats_domicile_type_sections = BoatsDomicileTypeSection.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @boats_domicile_type_sections }
    end
  end

  # GET /boats_domicile_type_sections/1
  # GET /boats_domicile_type_sections/1.xml
  def show
    @boats_domicile_type_section = BoatsDomicileTypeSection.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @boats_domicile_type_section }
    end
  end

  # GET /boats_domicile_type_sections/new
  # GET /boats_domicile_type_sections/new.xml
  def new
    @boats_domicile_type_section = BoatsDomicileTypeSection.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @boats_domicile_type_section }
    end
  end

  # GET /boats_domicile_type_sections/1/edit
  def edit
    @boats_domicile_type_section = BoatsDomicileTypeSection.find(params[:id])
  end

  # POST /boats_domicile_type_sections
  # POST /boats_domicile_type_sections.xml
  def create
    @boats_domicile_type_section = BoatsDomicileTypeSection.new(params[:boats_domicile_type_section])

    respond_to do |format|
      if @boats_domicile_type_section.save
        format.html { redirect_to(@boats_domicile_type_section, :notice => 'Boats domicile type section was successfully created.') }
        format.xml  { render :xml => @boats_domicile_type_section, :status => :created, :location => @boats_domicile_type_section }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @boats_domicile_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /boats_domicile_type_sections/1
  # PUT /boats_domicile_type_sections/1.xml
  def update
    @boats_domicile_type_section = BoatsDomicileTypeSection.find(params[:id])

    respond_to do |format|
      if @boats_domicile_type_section.update_attributes(params[:boats_domicile_type_section])
        format.html { redirect_to(@boats_domicile_type_section, :notice => 'Boats domicile type section was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @boats_domicile_type_section.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /boats_domicile_type_sections/1
  # DELETE /boats_domicile_type_sections/1.xml
  def destroy
    @boats_domicile_type_section = BoatsDomicileTypeSection.find(params[:id])
    @boats_domicile_type_section.destroy

    respond_to do |format|
      format.html { redirect_to(boats_domicile_type_sections_url) }
      format.xml  { head :ok }
    end
  end
end
