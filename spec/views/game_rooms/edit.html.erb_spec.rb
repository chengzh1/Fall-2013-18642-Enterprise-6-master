require 'spec_helper'

describe "game_rooms/edit" do
  before(:each) do
    @game_room = assign(:game_room, stub_model(GameRoom,
      :name => "MyString",
      :maxplayers => 1
    ))
  end

  it "renders the edit game_room form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", game_room_path(@game_room), "post" do
      assert_select "input#game_room_name[name=?]", "game_room[name]"
      assert_select "input#game_room_maxplayers[name=?]", "game_room[maxplayers]"
    end
  end
end
