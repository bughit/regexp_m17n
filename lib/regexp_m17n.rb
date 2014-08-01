module RegexpM17N
  def self.non_empty?(str)
    str.encode(Encoding::UTF_8) =~ /^.+$/u
  end
end