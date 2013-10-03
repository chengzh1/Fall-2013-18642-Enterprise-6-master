class GameRoomsController < ApplicationController
  # GET /game_rooms
  # GET /game_rooms.json
  def index
    @game_rooms = GameRoom.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @game_rooms }
    end
  end

  # GET /game_rooms/1
  # GET /game_rooms/1.json
  def show
    @game_room = GameRoom.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @game_room }
    end
  end

  # GET /game_rooms/new
  # GET /game_rooms/new.json
  def new
    @game_room = GameRoom.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @game_room }
    end
  end

  # GET /game_rooms/1/edit
  def edit
    @game_room = GameRoom.find(params[:id])
  end

  # POST /game_rooms
  # POST /game_rooms.json
  def create
    @game_room = GameRoom.new(params[:game_room])

    respond_to do |format|
      if @game_room.save
        format.html { redirect_to @game_room, notice: 'Game room was successfully created.' }
        format.json { render json: @game_room, status: :created, location: @game_room }
      else
        format.html { render action: "new" }
        format.json { render json: @game_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /game_rooms/1
  # PUT /game_rooms/1.json
  def update
    @game_room = GameRoom.find(params[:id])

    respond_to do |format|
      if @game_room.update_attributes(params[:game_room])
        format.html { redirect_to @game_room, notice: 'Game room was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @game_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_rooms/1
  # DELETE /game_rooms/1.json
  def destroy
    @game_room = GameRoom.find(params[:id])
    @game_room.destroy

    respond_to do |format|
      format.html { redirect_to game_rooms_url }
      format.json { head :no_content }
    end
  end
end
