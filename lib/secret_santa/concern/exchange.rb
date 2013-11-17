module SecretSanta::Concern
  module Exchange
    extend ActiveSupport::Concern

    included do
    end

    def matched?
      !!matched_at
    end

    def match!
      raise SecretSanta::MatchingError, "Match has already been completed." if matched?
      
    end

    module ClassMethods
    end
  end
end
