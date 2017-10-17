class ListsController < ApplicationController
  # before_action :set_list, only: [:show, :edit, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def index
    run List::Index
    render cell(List::Cell::Index, result['model']), layout: true
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    run List::Show
    render cell(List::Cell::Show, result['model']), layout: true
  end

  # GET /lists/new
  def new
    run List::Create::Present
    render cell(List::Cell::New, @form), layout: true
  end

  # GET /lists/1/edit
  def edit
    run List::Update::Present
    render cell(List::Cell::Edit, @form), layout: true
  end

  # POST /lists
  # POST /lists.json
  def create
    run List::Create do |result|
      return redirect_to lists_path
    end
    render cell(List::Cell::New, @form), layout: true
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    run List::Update do |result|
      flash[:notice] = "#{result['model'].todo} has been saved"
      return redirect_to list_path(result['model'].id)
    end

    render cell(List::Cell::Edit, @form), layout: true
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    run List::Delete

    flash[:alert] = 'Post deleted'
    redirect_to lists_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def list_params
      params.require(:list).permit(:todo)
    end
end
