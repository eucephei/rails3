class MessagesController < ApplicationController

  # GET /messages/new
  # GET /messages/new.json
  def new
    @message = Message.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @message }
    end
  end

  def create
    @message = Message.new(params[:message])
    if @message.valid?
      # TODO send message here
      flash[:notice] = "Message sent! Thank you for conacting us."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message = Message.find(params[:id])
    @message.destroy

    respond_to do |format|
      format.html { redirect_to messages_url }
      format.json { head :ok }
    end
  end
end
