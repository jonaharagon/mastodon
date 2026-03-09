require Rails.root.join('app/validators/status_length_validator.rb')
if ENV.has_key?('MAX_POST_CHARS') && ENV['MAX_POST_CHARS'].to_i > 0 && ENV['MAX_POST_CHARS'].to_i != StatusLengthValidator::MAX_CHARS
  StatusLengthValidator.send(:remove_const, :MAX_CHARS)
  StatusLengthValidator.const_set(:MAX_CHARS, ENV['MAX_POST_CHARS'].to_i)
end
