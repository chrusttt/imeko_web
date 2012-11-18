class ParticipantsController < ApplicationController
def new
  	@participant = Participant.new
  end

  def create
    @participant = Participant.new(params[:participant])
    respond_to do |format|
      if @participant.save
        format.html {render 'participants/create' }
        format.js { }
        format.json { }
      else
        format.html { render action: "new" }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
        
      end
    end
  end
end
