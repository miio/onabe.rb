class AssertsController < ApplicationController
  # GET /asserts
  # GET /asserts.json
  def index
    @asserts = Assert.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @asserts }
    end
  end

  # GET /asserts/1
  # GET /asserts/1.json
  def show
    @assert = Assert.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @assert }
    end
  end

  # GET /asserts/new
  # GET /asserts/new.json
  def new
    @assert = Assert.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @assert }
    end
  end

  # GET /asserts/1/edit
  def edit
    @assert = Assert.find(params[:id])
  end

  # POST /asserts
  # POST /asserts.json
  def create
    @assert = Assert.new(params[:assert])

    respond_to do |format|
      if @assert.save
        format.html { redirect_to @assert, notice: 'Assert was successfully created.' }
        format.json { render json: @assert, status: :created, location: @assert }
      else
        format.html { render action: "new" }
        format.json { render json: @assert.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /asserts/1
  # PUT /asserts/1.json
  def update
    @assert = Assert.find(params[:id])

    respond_to do |format|
      if @assert.update_attributes(params[:assert])
        format.html { redirect_to @assert, notice: 'Assert was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @assert.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asserts/1
  # DELETE /asserts/1.json
  def destroy
    @assert = Assert.find(params[:id])
    @assert.destroy

    respond_to do |format|
      format.html { redirect_to asserts_url }
      format.json { head :ok }
    end
  end
end
