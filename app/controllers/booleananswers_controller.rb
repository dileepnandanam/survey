class BooleananswersController < ApplicationController
  # GET /booleananswers
  # GET /booleananswers.json
  def index
    @booleananswers = Booleananswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @booleananswers }
    end
  end

  # GET /booleananswers/1
  # GET /booleananswers/1.json
  def show
    @booleananswer = Booleananswer.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booleananswer }
    end
  end

  # GET /booleananswers/new
  # GET /booleananswers/new.json
  def new
    @booleananswer = Booleananswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @booleananswer }
    end
  end

  # GET /booleananswers/1/edit
  def edit
    @booleananswer = Booleananswer.find(params[:id])
  end

  # POST /booleananswers
  # POST /booleananswers.json
  def create
    @booleananswer = Booleananswer.new(params[:booleananswer])
    
    @booleananswer.user_id = current_user.id
    
    
    if not @booleananswer.content ==""
      @booleananswer.save
      redirect_to :back
    else
      redirect_to return_path
    end
  end

  # PUT /booleananswers/1
  # PUT /booleananswers/1.json
  def update
    @booleananswer = Booleananswer.find(params[:id])

    respond_to do |format|
      if @booleananswer.update_attributes(params[:booleananswer])
        format.html { redirect_to @booleananswer, notice: 'Booleananswer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @booleananswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booleananswers/1
  # DELETE /booleananswers/1.json
  def destroy
    @booleananswer = Booleananswer.find(params[:id])
    @booleananswer.destroy

    respond_to do |format|
      format.html { redirect_to booleananswers_url }
      format.json { head :no_content }
    end
  end
end
