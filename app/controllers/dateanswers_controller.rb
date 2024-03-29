class DateanswersController < ApplicationController
  # GET /dateanswers
  # GET /dateanswers.json
  def index
    @dateanswers = Dateanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @dateanswers }
    end
  end

  # GET /dateanswers/1
  # GET /dateanswers/1.json
  def show
    @dateanswer = Dateanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @dateanswer }
    end
  end

  # GET /dateanswers/new
  # GET /dateanswers/new.json
  def new
    @dateanswer = Dateanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @dateanswer }
    end
  end

  # GET /dateanswers/1/edit
  def edit
    @dateanswer = Dateanswer.find(params[:id])
  end

  # POST /dateanswers
  # POST /dateanswers.json
  def create
    @dateanswer = Dateanswer.new(params[:dateanswer])
    
    @dateanswer.user_id=current_user.id
    
    if not @dateanswer.content==nil
      @dateanswer.save
      redirect_to :back
    else
       redirect_to :back
    end
      
  end

  # PUT /dateanswers/1
  # PUT /dateanswers/1.json
  def update
    @dateanswer = Dateanswer.find(params[:id])

    respond_to do |format|
      if @dateanswer.update_attributes(params[:dateanswer])
        format.html { redirect_to @dateanswer, notice: 'Dateanswer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @dateanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dateanswers/1
  # DELETE /dateanswers/1.json
  def destroy
    @dateanswer = Dateanswer.find(params[:id])
    @dateanswer.destroy

    respond_to do |format|
      format.html { redirect_to dateanswers_url }
      format.json { head :no_content }
    end
  end
end
