require 'spec_helper'

describe "game_rooms/index" do
  before(:each) do
    assign(:game_rooms, [
      stub_model(GameRoom,
        :name => "Name",
        :maxplayers => 1
      ),
      stub_model(GameRoom,
        :name => "Name",
        :maxplayers => 1
      )
    ])
  end

  it "renders a list of game_rooms" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
