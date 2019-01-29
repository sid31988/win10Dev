var component = component || {};
component.DataTable = function (rootSelector, settingsOrFactory) {
    component.Base.call(this, rootSelector, settingsOrFactory);
    let _this = this;
    let base = {};

    _this.$root = $(rootSelector);
    _this.$rowCommandTemplate = null;

    _this.dataTable = null;
    _this.handlers = null;
    _this.formatHelper = null;

    let defaultSettings = {
        commandDisplay: component.DataTable.CommandDisplayTypes.internal,
        rowCommandTemplateSelector: null,
        dateFormat: "MM-dd-yyyy",
        tableSettings: null
    };

    base.settings = _this.settings;
    _this.settings = function () {
        let settings = base.settings();
        if (settings === undefined || settings === null) throw "Unable to find settings for " + _this.constructor.name + ".";
        settings = lib.getOrDefault(settings, defaultSettings);
        return settings;
    }

    let getRowCommandTemplate = function () {
        if (settings.rowCommandTemplateSelector === null) {
            throw "Missing row command template selector.";
        }
        else {
            var $el = $(settings.rowCommandTemplateSelector);
            if ($el.length === 0) {
                throw "Unable to find element '" + settings.rowCommandTemplateSelector + "'"
            }
            return $el;
        }
    }

    _this.initialize = function () {
        _this.formatHelper = new component.DataTable.CellFormatHelper(_this);
        let settings = _this.settings();
        _this.dataTable = _this.$root.DataTable(settings.tableSettings);
        _this.handlers = new component.DataTable.EventHandlers(_this);
        if (settings.commandDisplay === component.DataTable.CommandDisplayTypes.internal) {
            _this.$rowCommandTemplate = getRowCommandTemplate();
        }
    }

}

component.DataTable.CommandDisplayTypes = {
    internal: 0,
    external: 1
};