require 'spec_helper'

describe ExpenseCategoriesController do

  let(:valid_attributes) { FactoryGirl.attributes_for(:expense_category) }
  let(:invalid_attributes) { { name: "", color: "" } }
  let(:valid_session) { {} }

  let!(:expense_category) { FactoryGirl.create :expense_category }

  describe "GET index" do
    it "assigns all expense_categories as @expense_categories" do
      get :index, {}, valid_session
      assigns(:expense_categories).should eq([expense_category])
    end
  end

  describe "GET show" do
    it "assigns the requested expense_category as @expense_category" do
      get :show, {:id => expense_category.to_param}, valid_session
      assigns(:expense_category).should eq(expense_category)
    end
  end

  describe "GET new" do
    it "assigns a new expense_category as @expense_category" do
      get :new, {}, valid_session
      assigns(:expense_category).should be_a_new(ExpenseCategory)
    end
  end

  describe "GET edit" do
    it "assigns the requested expense_category as @expense_category" do
      get :edit, {:id => expense_category.to_param}, valid_session
      assigns(:expense_category).should eq(expense_category)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ExpenseCategory" do
        expect {
          post :create, {:expense_category => valid_attributes}, valid_session
        }.to change(ExpenseCategory, :count).by(1)
      end

      it "assigns a newly created expense_category as @expense_category" do
        post :create, {:expense_category => valid_attributes}, valid_session
        assigns(:expense_category).should be_a(ExpenseCategory)
        assigns(:expense_category).should be_persisted
      end

      it "redirects to the created expense_category" do
        post :create, {:expense_category => valid_attributes}, valid_session
        response.should redirect_to(ExpenseCategory.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved expense_category as @expense_category" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseCategory.any_instance.stub(:save).and_return(false)
        post :create, {:expense_category => invalid_attributes}, valid_session
        assigns(:expense_category).should be_a_new(ExpenseCategory)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseCategory.any_instance.stub(:save).and_return(false)
        post :create, {:expense_category => invalid_attributes}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested expense_category" do
        # Assuming there are no other expense_categories in the database, this
        # specifies that the ExpenseCategory created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        params = { "name" => "CategoryA" }
        ExpenseCategory.any_instance.should_receive(:update).with(params)
        put :update, {:id => expense_category.to_param, :expense_category => params}, valid_session
      end

      it "assigns the requested expense_category as @expense_category" do
        put :update, {:id => expense_category.to_param, :expense_category => valid_attributes}, valid_session
        assigns(:expense_category).should eq(expense_category)
      end

      it "redirects to the expense_category" do
        put :update, {:id => expense_category.to_param, :expense_category => valid_attributes}, valid_session
        response.should redirect_to(expense_category)
      end
    end

    describe "with invalid params" do
      it "assigns the expense_category as @expense_category" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseCategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => expense_category.to_param, :expense_category => invalid_attributes}, valid_session
        assigns(:expense_category).should eq(expense_category)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        ExpenseCategory.any_instance.stub(:save).and_return(false)
        put :update, {:id => expense_category.to_param, :expense_category => invalid_attributes}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested expense_category" do
      expect {
        delete :destroy, {:id => expense_category.to_param}, valid_session
      }.to change(ExpenseCategory, :count).by(-1)
    end

    it "redirects to the expense_categories list" do
      delete :destroy, {:id => expense_category.to_param}, valid_session
      response.should redirect_to(expense_categories_url)
    end
  end

end
