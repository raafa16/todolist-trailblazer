module List::Cell
  class Item < Trailblazer::Cell
    def title
      link_to model.todo, model unless model == nil
    end

    property :todo

    def created_at
      model.created_at.strftime("%d %B %Y")
    end
  end
end