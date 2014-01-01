require 'open3'
require 'jison/execution_error'
require 'jison/version'

module Jison
	class << self
		def version
			Version.from_string `jison --version`
		end

		def parse(grammar)
			stdout, stderr, status = Open3.capture3('jison', :stdin_data => grammar)
			return stdout if status.exitstatus.zero?
			raise ExecutionError.new(stderr, status.exitstatus)
		end
	end
end
