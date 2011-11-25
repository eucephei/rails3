class SnippetsController < ApplicationController
  
  def index
    @snippets = Snippet.scoped
  end
  
  def edit
    @snippet = Snippet.find(params[:id])
  end
  
  def update
    @snippet = Snippet.find(params[:id])
    
    if @order.update_attributes(params[:snippet])
        redirect_to @snippet, notice: 'Snippet was successfully updated.'
    else
        render action: "edit"
    end
  end
  
  def new
    @snippet = Snippet.new
  end

  def create
    @snippet = Snippet.new(params[:snippet])
    if @snippet.save
      uri = URI.parse('http://pygments.appspot.com/')
      request = Net::HTTP.post_form(uri, {'lang' => @snippet.language, 'code' => @snippet.plain_code})
      @snippet.update_attribute(:highlighted_code, request.body)
      redirect_to @snippet, :notice => "Successfully created snippet."
    else
      render 'new'
    end
  end

  def show
    @snippet = Snippet.find(params[:id])
  end
  
  def destroy
    @snippet = Snippet.find(params[:id])
    @snippet.destroy

    redirect_to snippets_url
  end  
  
end
