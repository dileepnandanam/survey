class TextanswersController < ApplicationController
  # GET /textanswers
  # GET /textanswers.json
  def index
    @textanswers = Textanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @textanswers }
    end
  end

  # GET /textanswers/1
  # GET /textanswers/1.json
  def show
    @textanswer = Textanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @textanswer }
    end
  end

  # GET /textanswers/new
  # GET /textanswers/new.json
  def new
    @textanswer = Textanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @textanswer }
    end
  end

  # GET /textanswers/1/edit
  def edit
    @textanswer = Textanswer.find(params[:id])
  end

  # POST /textanswers
  # POST /textanswers.json
  def create
   
    @textanswer = Textanswer.new(params[:textanswer])
    
    @textanswer.user_id = current_user.id
    return_path=Questionare.find_by_id(cookies[:current_questionare_id])
    
    if not @textanswer.content ==''
      @textanswer.save
      
      redirect_to return_path
    else
      redirect_to return_path
    end
  end

  # PUT /textanswers/1
  # PUT /textanswers/1.json
  def update
    @textanswer = Textanswer.find(params[:id])

    respond_to do |format|
      if @textanswer.update_attributes(params[:textanswer])
        format.html { redirect_to @textanswer, notice: 'Textanswer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @textanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /textanswers/1
  # DELETE /textanswers/1.json
  def destroy
    @textanswer = Textanswer.find(params[:id])
    @textanswer.destroy

    respond_to do |format|
      format.html { redirect_to textanswers_url }
      format.json { head :no_content }
    end
  end
end
