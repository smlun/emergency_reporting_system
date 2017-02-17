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
    @emergency = Emergency.find(params[:id])
    @emergency.destroy
    respond_to do |format|
      format.html { redirect_to emergencies_path, notice: 'Successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    def emergency_params
      params.require(:emergency).permit(:subject, :category, :content)
    end
end
