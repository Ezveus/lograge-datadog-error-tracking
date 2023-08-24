# frozen_string_literal: true

require_relative 'tracking/version'

module Lograge

  module Datadog

    module Error

      module Tracking

        def self.call(event)
          if event.payload[:exception].present?
            {
              error: {
                kind:    event.payload[:exception][0],
                message: event.payload[:exception][1],
                stack:   event.payload[:exception_object].backtrace
              }
            }
          else
            {}
          end
        end

      end

    end

  end

end
