lint: .ylint .alint 

.alint: */*.yml
	ansible-lint --config-file=.config/ansible-lint.yml
	@touch $@

.ylint: */*.yml
	yamllint --config-file=.config/yamllint .
	@touch $@

clean:
	@/bin/rm -f .alint .ylint
