require 'yaml'


class ConfigRead

  def readconfigData(key)
    config= YAML.load_file("../config/config.yml")
    return config[key]
  end

end
