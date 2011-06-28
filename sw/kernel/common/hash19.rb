class Hash
  def self.try_convert(x)
    return nil unless x.respond_to? :to_hash
    x.to_hash
  end

  alias_method :key, :index

  # Sets the default proc to be executed on each key lookup
  def default_proc=(proc)
    @default = Type.coerce_to(proc, Proc, :to_proc)
    @default_proc = true
  end
end
