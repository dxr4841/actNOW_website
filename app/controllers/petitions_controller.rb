class PetitionsController < ApplicationController
  def index
    @petitions = Petition.all
  end

  def show
    @petition = Petition.find(params[:id])
  end

  def new
    @petition = Petition.new
  end

  def create
    @petition = Petition.new
    @petition.title = params[:title]
    @petition.addressee = params[:addressee]
    @petition.author = params[:author]
    @petition.petition_summary = params[:petition_summary]
    @petition.petition_description = params[:petition_description]
    @petition.video_url = params[:video_url]
    if @petition.save
      redirect_to "/petitions", :notice => "Petition created successfully."
    else
      render 'new'
    end
  end

  def edit
    @petition = Petition.find(params[:id])
  end

  def update
    @petition = Petition.find(params[:id])

    @petition.title = params[:title]
    @petition.addressee = params[:addressee]
    @petition.author = params[:author]
    @petition.petition_summary = params[:petition_summary]
    @petition.petition_description = params[:petition_description]

    if @petition.save
      redirect_to "/petitions", :notice => "Petition updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @petition = Petition.find(params[:id])

    @petition.destroy

    redirect_to "/petitions", :notice => "Petition deleted."
  end
end
