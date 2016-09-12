require 'rails_helper'

RSpec.describe ProjectsController, type: :controller do

it "Handles a mising project correctly" do

get :show, id:"not-here"

expect(response).to redirect_to(project_path)

message="The project you were looking for could not be found."
expect(flash[:alert]).to eq message

end
end
