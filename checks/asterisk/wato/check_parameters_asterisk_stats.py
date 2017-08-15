# Put this into /omd/sites/<sitename>/local/share/check_mk/web/plugins/wato/
# to be able to create WATO rules under Parameters for discovered services/Applications, Processes & Services/Asterisk stats check parameters

register_check_parameters(
    subgroup_applications,
    "asterisk_sip_peers",
    _("Asterisk stats check parameters"),
    Dictionary(
        elements = [
            ( "crit_if_offline_peers",
                Checkbox(
                    title = _("Change state to CRIT if there are offline peers"),
                    label = _("Enable"),
                    default_value = False,
                ),
            ),
        ],
        optional_keys = False,
    ),
    TextAscii(
        title = _("Description (should always be empty)"),
        allow_empty = True
    ),
    match_type = 'dict',
)
