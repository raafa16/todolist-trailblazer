module List::Cell
  class Item < Trailblazer::Cell
    property :todo

    def created_at
      model.created_at.strftime("%d %B %Y")
    end

    def detail
      link_to "Show", list_path(model.id)
    end

    def edit
      link_to "Edit", edit_list_path(model.id)
    end

    def remove
      button_to "Delete", list_path(model.id), method: :delete, data: {confirm: 'Are you sure?'}
    end
  end
end