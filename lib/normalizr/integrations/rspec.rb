if RSpec.respond_to?(:configure)
  RSpec.configure do |config|
    config.include Normalizr::RSpec::Matcher
  end
end
