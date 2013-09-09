require 'rubygems'
require 'anticipate'
require 'yaml'

World Anticipate

class EnvironmentConfig

  def self.config
    @@config ||= YAML.load_file(File.join(File.dirname(__FILE__), '../../config/envconfig.yml'))
  end

  def self.home_url
    'http://www.amazon.co.uk'
  end

  def self.search_term
    'ipad'
  end

  def self.first_item_price
    ""
  end

  def self.last_item_price
    "3.99"
  end

  def self.to_s
    "
    ==========================================================
    || Environment Configuration values
    ==========================================================
    ||
    ==========================================================
    || home_url: #{home_url}
    || search_term: #{search_term}
    ==========================================================
    || Thank you for Testing!!! :)
    ==========================================================

    "
  end

end