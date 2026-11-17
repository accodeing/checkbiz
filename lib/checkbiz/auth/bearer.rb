# frozen_string_literal: true

module Checkbiz
  module Auth
    class Bearer
      def initialize(access_token)
        @access_token = access_token
      end

      def apply(request)
        request.headers["Authorization"] = "Bearer #{@access_token.value}"
      end

      def on_rejected(response)
        raise Checkbiz::RequestError, response unless response.status == 401

        @access_token.invalidate(response.env.request_headers["Authorization"]&.delete_prefix("Bearer "))
      end
    end
  end
end
