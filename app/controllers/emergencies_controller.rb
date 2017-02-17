class EmergenciesController < ApplicationController
  def index
    @emergencies = Emergency.all
  end

  def show
    @emergency = Emergency.find(params[:id])
  end

  def new
    @emergency = Emergency.new
  end

  def edit
  end

  def create
    @emergency = Emergency.new(emergency_params)
    @emergency.save
    redirect_to @emergency
  end

  def update
  end

  def destroy
  end

  private
    def emergency_params
      params.require(:emergency).permit(:subject, :category, :content)
    end
end
