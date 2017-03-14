  class << Rails.application
    def domain
      "marktplatz.demokratie-in-bewegung.org"
    end

    def name
      "Marktplatz der Ideen"
    end
  end

  Rails.application.routes.default_url_options[:host] = Rails.application.domain