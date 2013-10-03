require 'spec_helper'

describe "game_rooms/show" do
  before(:each) do
    @game_room = assign(:game_room, stub_model(GameRoom,
      :name => "Name",
      :maxplayers => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
