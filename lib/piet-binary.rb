require 'piet'
require 'os'

module Piet
  class << self

    private

    def which(cmd)
      exts = ENV['PATHEXT'] ? ENV['PATHEXT'].split(';') : ['']
      ENV['PATH'].split(File::PATH_SEPARATOR).each do |path|
        exts.each do |ext|
          exe = File.join(path, "#{cmd}#{ext}")
          return exe if File.executable? exe
        end
      end
      return nil
    end

    def command_path(command)
      path = which(command)

      if path.blank?

        folder = if OS.osx?
          'osx'
        elsif OS.linux?
          File.join('linux', OS.bits.eql?(64) ? 'x64' : 'x86')
        elsif OS.windows?
          OS.bits.eql?(64) ? 'win64' : 'win32'
        end

        root = Gem::Specification.find_by_name('piet-binary').gem_dir
        path = File.join(root, 'bin', folder, command)
      end

      return path
    end

  end
end