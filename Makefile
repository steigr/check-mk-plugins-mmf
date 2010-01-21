DESTDIR = /usr
INSTALL = /usr/bin/install -m 0755 -D

all:
	@echo "Nothing to do"

install: install-openafs_bosstatus install-openafs_fscache install-apt_updates

install-openafs_bosstatus: install-check-openafs_bosstatus install-agent-openafs_bosstatus
install-check-openafs_bosstatus:
	@$(INSTALL) checks/openafs-bosstatus/checks/openafs_bosstatus $(DESTDIR)/usr/share/check_mk/checks/openafs_bosstatus
install-agent-openafs_bosstatus:
	@$(INSTALL) checks/openafs-bosstatus/agent/openafs_bosstatus  $(DESTDIR)/usr/lib/check_mk_agent/plugins/openafs_bosstatus

install-openafs_fscache: install-check-openafs_fscache install-agent-openafs_fscache
install-check-openafs_fscache:
	@$(INSTALL) checks/openafs-fscache/checks/openafs_fscache $(DESTDIR)/usr/share/check_mk/checks/openafs_fscache
install-agent-openafs_fscache:
	@$(INSTALL) checks/openafs-fscache/agent/openafs_fscache  $(DESTDIR)/usr/lib/check_mk_agent/plugins/openafs_fscache

install-apt_updates: install-check-apt_updates install-agent-apt_updates
install-check-apt_updates:
	@$(INSTALL) checks/apt/checks/apt_updates $(DESTDIR)/usr/share/check_mk/checks/apt_updates
install-agent-apt_updates:
	@$(INSTALL) checks/apt/agent/checkmk_apt  $(DESTDIR)/usr/lib/check_mk_agent/plugins/checkmk_apt

install-asterisk_stats: install-check-asterisk_stats install-agent-asterisk_stats
install-check-asterisk_stats:
	@$(INSTALL) checks/asterisk/checks/asterisk_stats $(DESTDIR)/usr/share/check_mk/checks/asterisk_stats
install-agent-asterisk_stats:
	@$(INSTALL) checks/asterisk/agent/asterisk_stats  $(DESTDIR)/usr/lib/check_mk_agent/plugins/asterisk_stats
