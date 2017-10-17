class List::Delete < Trailblazer::Operation
  step Model(List, :find_by)
  step :delete!

  def delete!(options, model:, **)
    model.destroy
  end
end