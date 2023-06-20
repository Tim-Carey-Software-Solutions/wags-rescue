# frozen_string_literal: true

module Admin
  class EventsController < Admin::ApplicationController
    def default_sorting_attribute
      :when
    end

    def default_sorting_direction
      :asc
    end
  end
end
