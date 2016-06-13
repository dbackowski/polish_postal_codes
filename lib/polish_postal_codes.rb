require 'polish_postal_codes/version'
require 'pstore'

module PolishPostalCodes
  class Info
    DATA = PStore.new('lib/polish_postal_codes.pstore')

    def self.get(postal_code)
      DATA.transaction(true) { |postal_codes| postal_codes[postal_code] }
    end
  end
end
