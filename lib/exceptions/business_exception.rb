# Exception used to express errors derived from business logic
# Its message is meant to be "safe" to be shown to the requester (REST calls, etc)
module Exceptions
  class BusinessException < StandardError
  end
end
