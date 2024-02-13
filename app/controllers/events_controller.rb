class EventsController < ApplicationController
  before_action :authenticate_user!

  # GET /events or /events.json
  def index
    @events = current_user.events
  end

  # GET /events/1 or /events/1.json
  def show
  end


  # GET /events/new
  def new
  end

  # POST /events or /events.json
  def create
    iterable_service.create_event(current_user.id, params[:event_type])
    respond_to do |format|
      @event = Event.find_or_initialize_by(user_id: current_user.id, name: "Event #{params[:event_type]}") if params[:event_type].present?
      if @event && @event.save
        format.html { redirect_to event_url(@event), notice: "Event was successfully created." }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:name, :user_id)
    end

    def iterable_service
      @iterable_service ||= MockIterableService.new
    end
end
