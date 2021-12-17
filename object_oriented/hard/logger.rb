class SecretFile
  def initialize(secret_data, logger)
    @data = secret_data
    @logger = logger
  end

  def data
    @logger.create_log_entry(@data)
    @data
  end
end

class SecurityLogger
  @@entries = []

  def create_log_entry(data)
    @@entries << data
  end
end

logger = SecurityLogger.new
SecretFile.new('secret', logger)
