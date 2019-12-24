require 'mangie/project'

module Mangie
  module CLI
    def self.run!(args)
      dir = args.shift
      file_path = File.join(Dir.pwd, dir, "Mangiefile")
      p = Project.new
      p.instance_eval(File.read(file_path))
      p p
    end
  end
end
