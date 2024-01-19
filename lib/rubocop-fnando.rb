# frozen_string_literal: true

require "rubocop"

module RuboCop
  module Fnando
  end
end

RuboCop::Cop::Lint::UselessAssignment.prepend(
  Module.new do
    def autocorrect(*)
    end
  end
)
