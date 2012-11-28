class WordanswersController < ApplicationController
  # GET /wordanswers
  # GET /wordanswers.json
  def index
    @wordanswers = Wordanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wordanswers }
    end
  end

  # GET /wordanswers/1
  # GET /wordanswers/1.json
  def show
    @wordanswer = Wordanswer.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wordanswer }
    end
  end

  # GET /wordanswers/new
  # GET /wordanswers/new.json
  def new
    
    
    @wordanswer = Wordanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wordanswer }
    
    end
  end

  # GET /wordanswers/1/edit
  def edit
    @wordanswer = Wordanswer.find(params[:id])
  end

  # POST /wordanswers
  # POST /wordanswers.json
  def create
    
      
    @wordanswer = Wordanswer.new(params[:wordanswer])
    
    @wordanswer.user_id = current_user.id
    return_path=Questionare.find_by_id(cookies[:current_questionare_id])
    
    if not @wordanswer.content ==""
      @wordanswer.save
      redirect_to return_path
    else
      redirect_to return_path
    end
  end

  # PUT /wordanswers/1
  # PUT /wordanswers/1.json
  def update
    @wordanswer = Wordanswer.find(params[:id])

    respond_to do |format|
      if @wordanswer.update_attributes(params[:wordanswer])
        format.html { redirect_to @wordanswer, notice: 'Wordanswer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wordanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wordanswers/1
  # DELETE /wordanswers/1.json
  def destroy
    @wordanswer = Wordanswer.find(params[:id])
    @wordanswer.destroy

    respond_to do |format|
      format.html { redirect_to wordanswers_url }
      format.json { head :no_content }
    end
  end
end
