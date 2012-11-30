class QuestionaresController < ApplicationController
  # GET /questionares
  # GET /questionares.json
  def index
    @questionares = Questionare.all
    @questionare = Questionare.new
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questionares }
    end
  end

  # GET /questionares/1
  # GET /questionares/1.json
  def show
  
  
    @questionare = Questionare.find(params[:id])
    cookies[:current_questionare_id]=@questionare.id
    
    if not current_user==nil and current_user.priviledge=="ordinary_user"
    
      
      @filtered_questions= @questionare.questions.select {|quest| (quest.answer_type=="word" and not  (quest.wordanswers.map {|ans| ans.user_id}).include?(current_user.id)) or (quest.answer_type=="boolean" and not  (quest.booleananswers.map {|ans| ans.user_id}).include?(current_user.id)) or (quest.answer_type=="text" and not  (quest.textanswers.map {|ans| ans.user_id}).include?(current_user.id)) or  (quest.answer_type=="number" and not  (quest.numberanswers.map {|ans| ans.user_id}).include?(current_user.id)) or (quest.answer_type=="date" and not  (quest.dateanswers.map {|ans| ans.user_id}).include?(current_user.id))}
      #filtering unanswered questions by current user
      
    else 
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @questionare }
      end
    end
  end

  # GET /questionares/new
  # GET /questionares/new.json
  def new
    @questionare = Questionare.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @questionare }
    end
  end

  # GET /questionares/1/edit
  def edit
    @questionare = Questionare.find(params[:id])
  end

  # POST /questionares
  # POST /questionares.json
  def create
    @questionare = Questionare.new(params[:questionare])
    @questionare.user_id=current_user.id
    
    if @questionare.questionare_name == ""
      redirect_to questionares_path
    else
      @questionare.save
      redirect_to @questionare
      
    end
   
  end

  # PUT /questionares/1
  # PUT /questionares/1.json
  def update
    @questionare = Questionare.find(params[:id])

    respond_to do |format|
      if @questionare.update_attributes(params[:questionare])
        format.html { redirect_to @questionare, notice: 'Questionare was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @questionare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionares/1
  # DELETE /questionares/1.json
  def destroy
    @questionare = Questionare.find(params[:id])
    @questionare.destroy

    respond_to do |format|
      format.html { redirect_to questionares_url }
      format.json { head :no_content }
    end
  end
end
