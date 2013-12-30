require 'piet'
require 'os'

module Piet
  class << self

    private

    def command_path(command)
      folder = if OS.osx?
        'osx'
      elsif OS.linux?
        File.join('linux', OS.bits.eql?(64) ? 'x64' : 'x86')
      elsif OS.windows?
        OS.bits.eql?(64) ? 'win64' : 'win32'
      end

      root = Gem::Specification.find_by_name('piet-binary').gem_dir
      File.join(root, 'bin', folder, command)
    end

  end
end