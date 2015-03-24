class FlashCard < ActiveRecord::Base
  LANGUAGES = ["English", "Japanese"]

  class << self
    def by_language(language)
      case language.to_s.downcase
      when "en", "eng", "english"
        where(language: "English")
      when "ja", "jp", "jap", "japanese"
        where(language: "Japanese")
      else
        all
      end
    end
  end
end
