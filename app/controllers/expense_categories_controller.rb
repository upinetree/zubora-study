class ExpenseCategoriesController < ApplicationController
  before_action :set_expense_category, only: [:show, :edit, :update, :destroy]

  # GET /expense_categories
  def index
    @expense_categories = ExpenseCategory.all
  end

  # GET /expense_categories/1
  def show
  end

  # GET /expense_categories/new
  def new
    @expense_category = ExpenseCategory.new
  end

  # GET /expense_categories/1/edit
  def edit
  end

  # POST /expense_categories
  def create
    @expense_category = ExpenseCategory.new(expense_category_params)
    if @expense_category.save
      redirect_to @expense_category, notice: I18n.t('message.notice.created')
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /expense_categories/1
  def update
    if @expense_category.update(expense_category_params)
      redirect_to @expense_category, notice: I18n.t('message.notice.updated')
    else
      render action: 'edit'
    end
  end

  # DELETE /expense_categories/1
  def destroy
    @expense_category.destroy
    redirect_to expense_categories_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_category
      @expense_category = ExpenseCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def expense_category_params
      params.require(:expense_category).permit(:name, :color)
    end
end
