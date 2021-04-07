from avalon import harmony
from pype.hosts.harmony import plugin


class CreateTemplate(plugin.Creator):
    """Composite node for publishing to templates."""

    name = "templateDefault"
    label = "Template"
    family = "harmony.template"

    def __init__(self, *args, **kwargs):
        super(CreateTemplate, self).__init__(*args, **kwargs)
