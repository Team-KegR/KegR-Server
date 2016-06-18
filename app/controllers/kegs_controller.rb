#
class KegsController < ApplicationController
  before_action :set_keg, only: [:index, :show, :update, :destroy]

  # GET /kegs
  # GET /kegs.json
  def index
    @kegs = kegs.order('id DESC').all

    render json: @kegs
  end

  # GET /kegs/1
  # GET /kegs/1.json
  def show
    render json: @keg
  end

  # POST /kegs
  # POST /kegs.json
  def create
    @keg = Keg.new(keg_params)

    if @keg.save
      render json: @keg, status: :created, location: @keg
    else
      render json: @keg.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /kegs/1
  # PATCH/PUT /kegs/1.json
  def update
    @keg = Keg.find(params[:id])

    if @keg.update(keg_params)
      head :no_content
    else
      render json: @keg.errors, status: :unprocessable_entity
    end
  end

  # DELETE /kegs/1
  # DELETE /kegs/1.json
  def destroy
    @keg.destroy

    head :no_content
  end

  private

  def set_keg
    @keg = Keg.find(params[:id])
  end

  def keg_params
    params.require(:keg).permit(:name, :validation, :kicked, :ratings, :comments)
  end
end
