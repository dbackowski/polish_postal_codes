require 'polish_postal_codes/version'
require 'pstore'

module PolishPostalCodes
  class Info
    DATA = PStore.new(File.expand_path('../polish_postal_codes.pstore', __FILE__))

    def self.get(postal_code)
      DATA.transaction(true) { |postal_codes| postal_codes[postal_code] }
    end
  end
end
