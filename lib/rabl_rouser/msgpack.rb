require 'msgpack'

module RablRouser
  class MessagePack
    def parse_parameters(body)
      data = ::MessagePack.unpack(body)
      data = { :_msgpack => data } unless data.is_a?(Hash)
      data.with_indifferent_access
    end
  end
end
