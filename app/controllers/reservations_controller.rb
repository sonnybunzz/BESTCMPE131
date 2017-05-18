class ReservationsController < ApplicationController
      before_action :authenticate_user!
  http_basic_authenticate_with name: "cmpe131", password: "cmpe131", except: [:index, :show]

  def index
    @reservations = Reservation.all
  end
 
  def show
    @reservation = Reservation.find(params[:id])
  end
 
  def new
    @reservation = Reservation.new
  end
 
  def edit
    @reservation = Reservation.find(params[:id])
  end
 
  def create
    @reservation = Reservation.new(reservation_params)
 
    if @reservation.save
      redirect_to @reservation
    else
      render 'new'
    end
  end
 
  def update
    @reservation = Reservation.find(params[:id])
 
    if @reservation.update(reservation_params)
      redirect_to @reservation
    else
      render 'edit'
    end
  end
 
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
 
    redirect_to reservations_path
  end
 
  private
    def reservation_params
      params.require(:reservation).permit(:title, :text, :time)
    end
end
