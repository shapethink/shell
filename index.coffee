Process = require "child_process"
module.exports = (cmdline, options = {}) ->
	require "child_process"
		.spawnSync "bash", ["-c", cmdline], options
