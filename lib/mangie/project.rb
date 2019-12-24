require 'mangie/target'

module Mangie
  class Project
    attr_accessor :name

    def initialize
      @name = nil
      @targets = {}
    end

    def target(name, &block)
      t = Target.new(self, name)
      @targets[name] = t
      yield t
    end
  end
end
