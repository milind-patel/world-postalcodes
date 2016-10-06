require 'yaml'
# @return Details like state name, city name, post office based on pincode.
module WorldPostalcodes
  VERSION = '1.0.0'
  class << self
    
    # Search details from pincode
    def search(code)
      db[code]
    end
    
    # Find details from yaml file
    def db
      @db ||= begin
        this_file = File.expand_path(File.dirname(__FILE__))
        data = File.join(this_file, 'data/postal_codes.yml')
        YAML.load(File.open(data))
      end
    end
    # Preload yaml file 
    def load
      db
    end
  end
end
