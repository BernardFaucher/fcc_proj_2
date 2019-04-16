class Shorturl < ApplicationRecord
    validate :valid_url

    def valid_url
        if url.blank? || !URI.parse(url).kind_of?(URI::HTTP)
            errors.add(:url, 'must be a valid url')
        end
    end

end
