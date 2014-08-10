class SignaturesController < ApplicationController
  def index
    @signatures = Signature.all
  end

  def show
    @signature = Signature.find(params[:id])
  end

  def new
    @signature = Signature.new
  end

  def create
    @signature = Signature.new
    @signature.first_name = params[:first_name]
    @signature.last_name = params[:last_name]
    @signature.city = params[:city]
    @signature.country = params[:country]
    @signature.phone_number = params[:phone_number]
    @signature.petition_id = params[:petition_id]

    if @signature.save
      redirect_to "/signatures", :notice => "Signature created successfully."
    else
      render 'new'
    end
  end

  def edit
    @signature = Signature.find(params[:id])
  end

  def update
    @signature = Signature.find(params[:id])

    @signature.first_name = params[:first_name]
    @signature.last_name = params[:last_name]
    @signature.city = params[:city]
    @signature.country = params[:country]
    @signature.phone_number = params[:phone_number]

    if @signature.save
      redirect_to "/signatures", :notice => "Signature updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @signature = Signature.find(params[:id])

    @signature.destroy

    redirect_to "/signatures", :notice => "Signature deleted."
  end
end
