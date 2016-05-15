class ChurchesController < ApplicationController
	def new
		@church = Church.new
	end
	def create
		@church = Church.new(church_params)

    respond_to do |format|
      if @church.save
        format.html { redirect_to @church, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @church }
      else
        format.html { render :new }
        format.json { render json: @church.errors, status: :unprocessable_entity }
      end
  end
end

def show
	@church = Church.find(params[:id])
end

private
def church_params
	params.require(:church).permit(:location, :name, :pastor)
end


end
