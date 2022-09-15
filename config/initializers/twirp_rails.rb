# frozen_string_literal: true

TwirpRails.setup do |config|
  # Handle exceptions
  #   true: handling by TwirpRails
  #   false: handling by Twirp::Service
  # config.handle_exceptions = true

  # ---
  # The following configurations ignore when handle_exceptions is false
  # ---

  # Mapping your exception classes and Twirp::Error::ERROR_CODES
  # config.exception_codes = {}

  # Block to make Twirp::Error message
  # config.build_message = ->(exception) {}

  # Block to make Twirp::Error metadata
  # config.build_metadata = ->(exception) {}

  # Block to run additional process. e.g. logging
  # config.on_exceptions = ->(exception) {}
end
