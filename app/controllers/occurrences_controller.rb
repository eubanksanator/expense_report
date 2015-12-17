class OccurrencesController < ApplicationController
  before_action :set_occurrence, only: [:show, :edit, :update, :destroy]

  def show

  end

  def new
    @occurrence = Occurrence.new
    @occurrence.expenses.build
  end

  def edit

  end

  def create
    @occurrence = Occurrence.new(occurrence_params)
  end

  def update

  end

  def destroy

  end

  private

  def set_occurrence
    @occurrence = Occurrence.find(params[:id])
  end

  def occurrence_params
    params.require(:occurrence).permit(:when,
      expenses_attributes: [:id, :cost, :gl_code, :location, :reason, :person_entertained, :total_miles, :expense_type, :occurrence_id])
  end

end
