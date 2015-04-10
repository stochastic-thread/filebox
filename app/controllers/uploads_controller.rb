class UploadsController < ApplicationController
  before_action :set_upload, only: [:show, :edit, :update, :destroy]
  respond_to :html, :xml, :json
  def index
    @uploads = Upload.all
    respond_with(@uploads)
  end

  def show
    respond_with(@upload)
  end

  def new
    @upload = Upload.new
    respond_with(@upload)
  end

  def edit
  end

  def create
    @upload = Upload.new(upload_params)
    @upload.user_id = current_user.id
    @upload.save
    respond_with(@upload)
  end

  def update
    @upload.update(upload_params)
    respond_with(@upload)
  end

  def destroy
    @upload.destroy
    respond_with(@upload)
  end

  private
    def set_upload
      @upload = Upload.find(params[:id])
    end

    def upload_params
      params.require(:upload).permit(:title, :content)
    end
end
