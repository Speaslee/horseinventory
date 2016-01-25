class HorsesController < ActionController::Base

  def index
    @horses = Horse.all
  end

  def show
    @horse = Horse.find params[:id]
  end

  def new
    @horse = Horse.new
  end

  def create
    Horse.create(
      name: params[:horse][:name],
      color: params[:horse][:color],
      saddle_number: params[:horse][:saddle_number],
      breed: params[:horse][:breed],
      notes: params[:horse][:notes],
      string: params[:horse][:string]
    )
    redirect_to "horse/#{Horse.last.id}", notice: "#{Horse.last.name} saved"
  end

  def edit
    @horse = Horse.find(params[:id])
  end

  def update
    Horse.find(params[:id]).update(
      name: params[:horse][:name],
      color: params[:horse][:color],
      saddle_number: params[:horse][:saddle_number],
      breed: params[:horse][:breed],
      notes: params[:horse][:notes],
      string: params[:horse][:string]
    )
    redirect_to "/horse/#{params[:id]}", notice: "#{Horse.find(params[:id]).name} updated"
  end

  def picture
    Horse.find(params[:id]).update(
    picture: params[:horse][:picture]
    )
    redirect_to :back, notice: "Picture uploaded"
  end
end
