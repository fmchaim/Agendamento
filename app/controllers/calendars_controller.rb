class CalendarsController < ApplicationController
  before_action :set_calendar, only: [:show, :edit, :update, :destroy]

  def index
    @calendars = Calendar.all
  end

  def show
  end

  def new
    @calendar = Calendar.new
  end

  def create
    @calendar = Calendar.new(calendar_params)
    if @calendar.save
      redirect_to calendar_path(@calendar)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @calendar.update(calendar_params)
      redirect_to calendar_path(@calendar)
    else
      render :edit
    end
  end

  def destroy
    @calendar.destroy
    redirect_to calendars_path
  end

  private

  def calendar_params
    params.require(:calendar).permit(:date, :time, :doctor_id, )
  end

  def set_calendar
    @calendar = Calendar.find(params[:id])
  end
end
