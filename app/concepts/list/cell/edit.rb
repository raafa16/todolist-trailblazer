module List::Cell
  class Edit < New

    def show
      render :new
    end

    def back
      link_to "Back", list_path(model.id)
    end

    def delete
      link_to "Delete Post", list_path(model.id), method: :delete
    end
  end
end