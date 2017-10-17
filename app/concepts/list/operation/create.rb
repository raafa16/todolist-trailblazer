class List::Create < Trailblazer::Operation
  class Present < Trailblazer::Operation
    step Model(List, :new)
    step Contract::Build( constant: List::Contract::Create )
  end

  #~present
  step Nested( Present )
  step Contract::Validate( key: :list )
  step Contract::Persist( )
  step :notify!

  def notify!(options, model:, **)
    options["result.notify"] = Rails.logger.info("New todo list #{model.title}.")
  end
  #~present end
end