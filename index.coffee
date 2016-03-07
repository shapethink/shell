Process = require "child_process"
module.exports = (cmdline, options = {stdio:"inherit"}) ->
	if module.exports.dry_run
		console.log "shell: #{cmdline}"
		{ status: 0 }
	else
		require "child_process"
			.spawnSync "bash", ["-c", cmdline], options

module.exports.dry_run = false
