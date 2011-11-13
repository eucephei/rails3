class PageRequestsController < InheritedResources::Base
  def index
    @page_requests = PageRequest.all
  end
end
