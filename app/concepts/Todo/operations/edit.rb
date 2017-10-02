# frozen_string_literal: true

class Todo < ApplicationRecord
  # operation for creating virtual club
  class Delete < Trailblazer::Operation
    extend Contract::DSL

    contract do
      property :id
      validates :id, presence: true
    end

    step Model(::Todo, :find_by)
    failure :item_not_found, fail_fast: true
    step Contract::Build()
    step Contract::Validate()
    step Contract::Persist()

    private

    def item_not_found(options)
      options['message'] = 'Item not found'
    end
  end
end