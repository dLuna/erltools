

.PHONY: check forbidden_patterns export_all long_lines
check: forbidden_patterns
	@true

forbidden_patterns: export_all long_lines

export_all:
	test/bin/forbidden pattern='-compile.*export_all' text='compile(export_all) is not allowed.'
