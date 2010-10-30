class InspectionsController < ApplicationController
  def index
    #@inspections = Inspection.desc(:finished_at).all

    @inspections = Inspection.desc(:finished_at).paginate :page => params[:page], :per_page => 50
    #render :text => "index page: #{@inspections.collect { |i| i.total_observables }.sum} total observables for #{@inspections.length} inspections"
  end

  def show
    @inspection = Inspection.find(params[:id])
    #render :text => "show page for #{@inspection.name}"
  end

  def new
    @inspection = Inspection.new
  end

  def edit
    @inspection = Inspection.find(params[:id])
  end

  def create
    @inspection = Inspection.new(params[:inspection])

    if @inspection.save
      redirect_to(@inspection, :notice => 'Inspection was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    @inspection = Inspection.find(params[:id])

    if @inspection.update_attributes(params[:inspection])
      redirect_to(@inspection, :notice => 'Inspection was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def destroy
    @inspection = Inspection.find(params[:id])
    @inspection.destroy

    redirect_to(inspections_url, :notice => 'Inspection was successfully deleted.')
  end
end
