vim.filetype.add({
	pattern = {
		[".*/playbooks/.*%.ya?ml"] = "yaml.ansible",
		[".*/roles/.*%.ya?ml"] = "yaml.ansible",
		[".*/tasks/.*%.ya?ml"] = "yaml.ansible",
		[".*/handlers/.*%.ya?ml"] = "yaml.ansible",
	},
})
