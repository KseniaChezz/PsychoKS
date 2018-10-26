class CardInColumnsController < ApplicationController
  before_action :set_card_in_column, only: [:show, :edit, :update, :destroy]

  # GET /card_in_columns
  # GET /card_in_columns.json
  def index
    @card_in_columns = CardInColumn.all
  end

  # GET /card_in_columns/1
  # GET /card_in_columns/1.json
  def show
  end

  # GET /card_in_columns/new
  def new
    @card_in_column = CardInColumn.new
  end

  # GET /card_in_columns/1/edit
  def edit
  end

  # POST /card_in_columns
  # POST /card_in_columns.json
  def create
    @card_in_column = CardInColumn.new(card_in_column_params)

    respond_to do |format|
      if @card_in_column.save
        format.html { redirect_to @card_in_column, notice: 'Card in column was successfully created.' }
        format.json { render :show, status: :created, location: @card_in_column }
      else
        format.html { render :new }
        format.json { render json: @card_in_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /card_in_columns/1
  # PATCH/PUT /card_in_columns/1.json
  def update
    respond_to do |format|
      if @card_in_column.update(card_in_column_params)
        format.html { redirect_to @card_in_column, notice: 'Card in column was successfully updated.' }
        format.json { render :show, status: :ok, location: @card_in_column }
      else
        format.html { render :edit }
        format.json { render json: @card_in_column.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /card_in_columns/1
  # DELETE /card_in_columns/1.json
  def destroy
    @card_in_column.destroy
    respond_to do |format|
      format.html { redirect_to card_in_columns_url, notice: 'Card in column was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card_in_column
      @card_in_column = CardInColumn.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def card_in_column_params
      params.require(:card_in_column).permit(:card_id, :column_id)
    end
end
