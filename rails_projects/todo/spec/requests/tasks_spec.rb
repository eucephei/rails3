require 'spec_helper'

describe "Tasks" do
  
  describe "GET /tasks" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get tasks_path
      response.status.should be(200)
    end
    
    it "displays tasks" do
      Task.create!(:name => "paint fence")
      get tasks_path
      response.body.should include("paint fence")
    end
  end
  
  describe "POST /tasks" do
    it "create task" do
      post_via_redirect tasks_path :task => {:name => "mow lawn"}
      response.body.should include("mow lawn")
    end
  end
  
end
