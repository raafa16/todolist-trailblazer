module List::Cell
  class Item < Trailblazer::Cell
    def todo
      link_to model.todo, model unless model == nil
    end

    property :todo

    def created_at
      model.created_at.strftime("%d %B %Y")
    end

    def edit
      link_to "Edit", edit_list_path(model.id)
    end

    def delete
      link_to "Delete Post", list_path(model.id), method: :delete
    end
  end
end