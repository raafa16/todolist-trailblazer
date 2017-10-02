class TodosController < ApplicationController

  def index
    todos = Todo.all
  end

  def create
    run Todo::Create do |result|
      return redirect_to blog_posts_path
    end

    render cell(Todo::Cell::New, @form), layout: false
  end

  def edit

  end

  def delete

  end
end
