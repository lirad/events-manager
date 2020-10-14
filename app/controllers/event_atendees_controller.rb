class EventAtendeesController < ApplicationController
  before_action :set_event_atendee, only: [:show, :edit, :update, :destroy]


  # GET /event_atendees
  # GET /event_atendees.json
  def index
    @event_atendees = EventAtendee.all
  end

  # GET /event_atendees/1
  # GET /event_atendees/1.json
  def show
  end

  # GET /event_atendees/new
  def new
    @event_atendee = EventAtendee.new
  end

  # GET /event_atendees/1/edit
  def edit
  end
  
  def join_event
    event = EventAtendee.create(event_id: params[:format], atendee_id: current_user[:id]) 
    event.save
    flash[:notice] = "Thank you for joining our event!"
    redirect_to event_path(params[:format])

    
  end  

  # POST /event_atendees
  # POST /event_atendees.json
  def create
    @event_atendee = EventAtendee.new(event_atendee_params)

    respond_to do |format|
      if @event_atendee.save
        format.html { redirect_to @event_atendee, notice: 'Event atendee was successfully created.' }
        format.json { render :show, status: :created, location: @event_atendee }
      else
        format.html { render :new }
        format.json { render json: @event_atendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_atendees/1
  # PATCH/PUT /event_atendees/1.json
  def update
    respond_to do |format|
      if @event_atendee.update(event_atendee_params)
        format.html { redirect_to @event_atendee, notice: 'Event atendee was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_atendee }
      else
        format.html { render :edit }
        format.json { render json: @event_atendee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_atendees/1
  # DELETE /event_atendees/1.json
  def destroy
    @event_atendee.destroy
    respond_to do |format|
      format.html { redirect_to event_atendees_url, notice: 'Event atendee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_atendee
      @event_atendee = EventAtendee.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_atendee_params
      params.require(:event_atendee).permit(:event_id, :user_id)
    end
end
