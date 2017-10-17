module List::Cell
  class Index < Trailblazer::Cell
    def total
      return "No posts" if model.size == 0
    end

    def create_new
      link_to 'Create New Post', new_list_path
    end
  end
end