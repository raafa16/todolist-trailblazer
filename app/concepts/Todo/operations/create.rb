# frozen_string_literal: true

class Todo < ApplicationRecord
  # operation for creating virtual club
  class Create < Trailblazer::Operation
    extend Contract::DSL

    contract do
      property :item
      validates :item, presence: true
    end

    step Model(::Todo, :new)
    step Contract::Build()
    step Contract::Validate()
    step Contract::Persist()
  end
end