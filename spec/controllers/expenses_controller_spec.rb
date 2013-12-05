require 'spec_helper'

describe ExpensesController do

  let(:valid_attributes) { FactoryGirl.attributes_for(:expense) }
  let(:invalid_attributes) { { amount: "string" } }
  let(:valid_session) { {} }

  let!(:expense) { FactoryGirl.create :expense }

  describe "GET index" do
    it "assigns all expenses as @expenses" do
      get :index, {}, valid_session
      assigns(:expenses).should eq([expense])
    end
  end

  describe "GET show" do
    it "assigns the requested expense as @expense" do
      get :show, {:id => expense.to_param}, valid_session
      assigns(:expense).should eq(expense)
    end
  end

  describe "GET new" do
    it "assigns a new expense as @expense" do
      get :new, {}, valid_session
      assigns(:expense).should be_a_new(Expense)
    end
  end

  describe "GET edit" do
    it "assigns the requested expense as @expense" do
      get :edit, {:id => expense.to_param}, valid_session
      assigns(:expense).should eq(expense)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Expense" do
        expect {
          post :create, {:expense => valid_attributes}, valid_session
        }.to change(Expense, :count).by(1)
      end

      it "assigns a newly created expense as @expense" do
        post :create, {:expense => valid_attributes}, valid_session
        assigns(:expense).should be_a(Expense)
        assigns(:expense).should be_persisted
      end

      it "redirects to the created expense" do
        post :create, {:expense => valid_attributes}, valid_session
        response.should redirect_to(Expense.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved expense as @expense" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expense.any_instance.stub(:save).and_return(false)
        post :create, {:expense => invalid_attributes}, valid_session
        assigns(:expense).should be_a_new(Expense)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expense.any_instance.stub(:save).and_return(false)
        post :create, {:expense => invalid_attributes}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested expense" do
        # Assuming there are no other expenses in the database, this
        # specifies that the Expense created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        params = {'amount' => '1000'}
        Expense.any_instance.should_receive(:update).with(params)
        put :update, {:id => expense.to_param, :expense => params}, valid_session
      end

      it "assigns the requested expense as @expense" do
        put :update, {:id => expense.to_param, :expense => valid_attributes}, valid_session
        assigns(:expense).should eq(expense)
      end

      it "redirects to the expense" do
        put :update, {:id => expense.to_param, :expense => valid_attributes}, valid_session
        response.should redirect_to(expense)
      end
    end

    describe "with invalid params" do
      it "assigns the expense as @expense" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expense.any_instance.stub(:save).and_return(false)
        put :update, {:id => expense.to_param, :expense => invalid_attributes}, valid_session
        assigns(:expense).should eq(expense)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Expense.any_instance.stub(:save).and_return(false)
        put :update, {:id => expense.to_param, :expense => invalid_attributes}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested expense" do
      expect {
        delete :destroy, {:id => expense.to_param}, valid_session
      }.to change(Expense, :count).by(-1)
    end

    it "redirects to the expenses list" do
      delete :destroy, {:id => expense.to_param}, valid_session
      response.should redirect_to(expenses_url)
    end
  end

end
