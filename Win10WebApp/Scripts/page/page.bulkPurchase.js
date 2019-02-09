//#region Type Definitions
/**
 * A json configuration object to hold Billing Form's element selectors and other settings
 * @typedef {Object} BillingFormSettings
 * @property {string} ffmcSelector - Selector pointing to the ffmc field
 * @property {string} deliveredInSelector - Selector pointing to the deliveredin field
 * @property {string} brokerSelector - Selector pointing to the broker field
 * @property {string} dateSelector - Selector pointing to the date field
 * @property {string} quotaSelector - Selector pointing to the quota field
 * @property {string} remarkSelector - Selector pointing to the remark field
 * @property {string} subBrokerSelector - Selector pointing to the subbroker field
 * @property {string} costCentreSelector - Selector pointing to the costcentre field
 */
/**
 * A json configuration object to hold Forex Tab's element selectors and other settings
 * @typedef {Object} ForexDetailsSettings
 * @property {string} dataTableSelector - Selector pointing to the forex datatable element
 * @property {Object} tableSettings - Settings for initializing the jQuery DataTable control
 * @property {string} summaryFormSelector - Selector pointing to the forex summary form
 * @property {Object} summaryFormSettings - Settings related to the forex summary form
 * @property {string} detailsFormSelector - Selector pointing to the forex details form
 * @property {ForexDetailsFormSettings} detailsFormSettings - Settings related to the forex details form
 * @property {string} commandPanelSelector - Selector pointing to the forex command panel container
 * @property {CommandPanelSettings} commandPanelSettings - Settings related to the forex command panel component
 * @property {string} addUrl - The add ajax url
 * @property {string} editUrl - The edit ajax url
 * @property {string} deleteUrl - The delete ajax url
 * @property {string} saveUrl - The save ajax url
 */
/**
 * A json configuration object to hold Payment Tab's element selectors and other settings
 * @typedef {Object} PaymentDetailsSettings
 * @property {string} dataTableSelector - Selector pointing to the payment datatable element
 * @property {Object} tableSettings - Settings for initializing the jQuery DataTable control
 * @property {string} summaryFormSelector - Selector pointing to the payment summary form
 * @property {string} detailsFormSelector - Selector pointing to the payment details form
 * @property {Object} detailsFormSettings - Settings related to the payment details form
 * @property {string} commandPanelSelector - Selector pointing to the payment command panel container
 * @property {CommandPanelSettings} commandPanelSettings - Settings related to the payment command panel component
 * @property {string} addUrl - The add ajax url
 * @property {string} editUrl - The edit ajax url
 * @property {string} deleteUrl - The delete ajax url
 * @property {string} saveUrl - The save ajax url
 */
/**
 * A json configuration object to hold Command panel's element selectors and other settings
 * @typedef {Object} CommandPanelSettings
 * @property {string} addCommandButtonSelector - Selector pointing to the Add command button
 * @property {string} editCommandButtonSelector - Selector pointing to the Edit command button
 * @property {string} deleteCommandButtonSelector - Selector pointing to the Delete command button
 * @property {string} saveCommandButtonSelector - Selector pointing to the Save command button
 * @property {string} cancelCommandButtonSelector - Selector pointing to the Cancel command button
 */
/**
 * A json configuration object to hold Forex Details Form's element selectors and other settings
 * @typedef {Object} ForexDetailsFormSettings
 * @property {string} currencyNameSelector - Selector pointing to the CurrencyName field
 * @property {string} currencyNoteSelector - Selector pointing to the CurrencyNote field
 * @property {string} quantitySelector - Selector pointing to the Quantity field
 * @property {string} rateSelector - Selector pointing to the Rate field
 * @property {string} grossAmtSelector - Selector pointing to the GrossAmt field
 * @property {string} calculatedGrossSelector - Selector pointing to the CalculaatedGross field
 * @property {ForexDetailsBrokerFieldsGroup} brokerFields - A grouping for holding selector references of all the broker fields
 * @property {ForexDetailsSubBrokerFieldsGroup} subBrokerFields - A grouping for holding selector references of all the subbroker fields
 */
/**
 * A json configuration object to hold the Forex Broker Fields' selector
 * @typedef {Object} ForexDetailsBrokerFieldsGroup
 * @property {string} brokerPaiseSelector - Selector pointing to the BrokerPaise field
 * @property {string} brokerPaiseAmtSelector - Selector pointing to the BrokerPaiseAmt field
 * @property {string} brokerCommAmtSelector - Selector pointing to the BrokerCommAmt field
 * @property {string} brokerTdsPercentageSelector - Selector pointing to the BrokerTdsPercentage field
 * @property {string} brokerTdsAmtSelector - Selector pointing to the BrokerTdsAmt field
 */
/**
 * A json configuration object to hold the Forex Broker Fields' selector
 * @typedef {Object} ForexDetailsSubBrokerFieldsGroup
 * @property {string} subBrokerPaiseSelector - Selector pointing to the SubBrokerPaise field
 * @property {string} subBrokerPaiseAmtSelector - Selector pointing to the SubBrokerPaiseAmt field
 * @property {string} subBrokerCommAmtSelector - Selector pointing to the SubBrokerCommAmt field
 * @property {string} subBrokerTdsPercentageSelector - Selector pointing to the SubBrokerTdsPercentage field
 * @property {string} subBrokerTdsAmtSelector - Selector pointing to the SubBrokerTdsAmt field
 */
 /**
 * The page level settings used to instantiate the BulkPurchasePage object.
 * @typedef {Object} BulkPurchaseSettings
 * @property {string} billingFormSelector - Selector pointing to the billing form element
 * @property {BillingFormSettings} billingFormSettings - Settings related to the billing form component
 * @property {ForexDetailsSettings} forexDetailsSettings - Settings related to the forex form component
 * @property {PaymentDetailsSettings} paymentDetailsSettings - Settings related to the payment form component
 * @property {CommandPanelSettings} commandPanelSettings - Settings related to the main command panel component
 * @property {string} addUrl - The add ajax url
 * @property {string} editUrl - The edit ajax url
 * @property {string} deleteUrl - The delete ajax url
 * @property {string} saveUrl - The save ajax url
 */
//#endregion

/**
 * The 'page' namespace
 */
var page = page || {};
/**
 * A prototype to represent the BulkPurchase page ui.
 * @extends {component.page}
 * @type BulkPurchasePage
 */
page.BulkPurchase = function BulkPurchasePage (rootSelector, settings) {
    component.Page.call(this, rootSelector, settings);

    /**
     * A closure variable to hold reference for the execution context of instance
     * @type page.BulkPurchase
     */
    let _this = this;

    /**
     * A closure variable to imitate the super class mechanism, so as to hold older functionality,
     * before overriding the method
     * @type component.Page
     */
    let base = {};

    //#region "Settings: The default settings provision."
    /**
     * The default settings used to override the null settings injected via constructor function
     * @type BulkPurchaseSettings
     */
    let defaultSettings = {
        billingFormSelector: null,
        billingFormSettings: {
            ffmcSelector: null,
            deliveredInSelector: null,
            brokerSelector: null,
            dateSelector: null,
            quotaSelector: null,
            remarkSelector: null,
            referenceSelector: null,
            subBrokerSelector: null,
            costCentreSelector: null
        },
        forexDetailsSettings: {
            dataTableSelector: null,
            tableSettings: null,
            summaryFormSelector: null,
            summaryFormSettings: null,
            detailsFormSelector: null,
            detailsFormSettings: {
                currencyNameSelector: null,
                currencyNoteSelector: null,
                quantitySelector: null,
                rateSelector: null,
                grossAmtSelector: null,
                calculatedGrossSelector: null,
                brokerFields: {
                    brokerPaiseSelector: null,
                    brokerPaiseAmtSelector: null,
                    brokerCommAmtSelector: null,
                    brokerTdsPercentageSelector: null,
                    brokerTdsAmtSelector: null
                },
                subBrokerFields: {
                    subBrokerPaiseSelector: null,
                    subBrokerPaiseAmtSelector: null,
                    subBrokerCommAmtSelector: null,
                    subBrokerTdsPercentageSelector: null,
                    subBrokerTdsAmtSelector: null
                }
            },
            commandPanelSelector: null,
            commandPanelSettings: {
                addCommandButtonSelector: null,
                editCommandButtonSelector: null,
                deleteCommandButtonSelector: null,
                saveCommandButtonSelector: null,
                cancelCommandButtonSelector: null
            },
            addUrl: null,
            editUrl: null,
            deleteUrl: null,
            saveUrl: null
        },
        paymentDetailsSettings: {
            dataTableSelector: null,
            tableSettings: null,
            detailsFormSelector: null,
            detailsFormSettings: null,
            commandPanelSelector: null,
            commandPanelSettings: {
                addCommandButtonSelector: null,
                editCommandButtonSelector: null,
                deleteCommandButtonSelector: null,
                saveCommandButtonSelector: null,
                cancelCommandButtonSelector: null
            },
            addUrl: null,
            editUrl: null,
            deleteUrl: null,
            saveUrl: null
        },
        commandPanelSelector: null,
        commandPanelSettings: {
            addCommandButtonSelector: null,
            editCommandButtonSelector: null,
            deleteCommandButtonSelector: null,
            saveCommandButtonSelector: null,
            cancelCommandButtonSelector: null
        },
        addUrl: null,
        editUrl: null,
        deleteUrl: null,
        saveUrl: null
    };

    base.settings = _this.settings;
    let _settings = null;
    _this.settings = function () {
        if (_settings === null) {
            _settings = base.settings();
            _settings = lib.getOrDefault(_settings, defaultSettings);
        }
        return _settings;
    }
    //#endregion

    //#region "Page components"
    _this.billingForm = null;
    _this.forex = {
        dataTable: null,
        form: null,
        summaryForm: null,
        commandPanel: null
    };
    _this.payment = {
        dataTable: null,
        form: null,
        commandPanel: null
    }
    _this.commandPanel = null;
    _this.eventHandlers = null;
    //#endregion

    /**
     * Initializes all the internal components of the Bulk Purchase Page.
     * @returns void
     */
    _this.initialize = function initialize () {
        let settings = _this.settings();
        _this.billingForm = new page.BulkPurchase.BillingForm(settings.billingFormSelector, settings.billingFormSettings);
        _this.forex.dataTable = new component.DataTable(settings.forexDetailsSettings.dataTableSelector, settings.forexDetailsSettings.tableSettings);
        _this.forex.form = new page.BulkPurchase.ForexDetailsForm(settings.forexDetailsSettings.detailsFormSelector, settings.forexDetailsSettings.detailsFormSettings);
        _this.forex.summaryForm = new component.Form(settings.forexDetailsSettings.summaryFormSelector, settings.forexDetailsSettings.summaryFormSettings);
        _this.forex.commandPanel = new page.BulkPurchase.ForexCommandPanel(settings.forexDetailsSettings.commandPanelSelector, settings.forexDetailsSettings.commandPanelSettings);
        _this.payment.dataTable = new component.DataTable(settings.paymentDetailsSettings.dataTableSelector, settings.paymentDetailsSettings.tableSettings);
        _this.payment.form = new component.Form(settings.paymentDetailsSettings.detailsFormSelector, settings.paymentDetailsSettings.detailsFormSettings);
        _this.payment.commandPanel = new page.BulkPurchase.PaymentCommandPanel(settings.paymentDetailsSettings.commandPanelSelector, settings.paymentDetailsSettings.commandPanelSettings);
        _this.commandPanel = new page.BulkPurchase.MainCommandPanel(settings.commandPanelSelector, settings.commandPanelSettings);
        _this.eventHandlers = new page.BulkPurchase.Events(_this);
        _this.eventHandlers.initialize();

        _this.billingForm.initialize();
        _this.forex.dataTable.initialize();
        _this.forex.form.initialize();
        _this.forex.summaryForm.initialize();
        _this.forex.commandPanel.initialize();
        _this.payment.dataTable.initialize();
        _this.payment.form.initialize();
        _this.payment.commandPanel.initialize();
        _this.commandPanel.initialize();
        _this.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);

        // Disable the main forms and the inner forms i.e. forex and payment
        _this.enableForms(false, false);
    }

    /**
     * Toggles the accessibility of the both the main forms (outer panel) and inner forms (forex and payment)
     * @param enableInner {boolean} true to enable the inner forms and false to disable the inner forms
     * @param enableMain {boolean} true to enable the main forms and false to disable the main forms
     * @returns void
     */
    _this.enableForms = function enableForms (enableInner, enableMain) {
        enableInner = enableInner || false;
        enableMain = enableMain || false;
        _this.billingForm.enable(enableMain);
        _this.forex.form.enable(enableInner);
        _this.forex.summaryForm.enable(enableMain);
        _this.payment.form.enable(enableInner);
    }

    _this.setBrokerFields = function () {
        _this.forex.form.brokerFields.enable(_this.billingForm.getBrokerValue() !== null);
        _this.forex.form.subBrokerFields.enable(_this.billingForm.getSubBrokerValue() !== null);
    }
}

//#region Custom Forms and Panels
page.BulkPurchase.BillingForm = function (rootSelector, settings) {
    component.Form.call(this, rootSelector, settings);

    let _this = this;
    _this.$ffmc = null;
    _this.$deliveredIn = null;
    _this.$broker = null;
    _this.$date = null;
    _this.$quota = null;
    _this.$remark = null;
    _this.$reference = null;
    _this.$subBroker = null;
    _this.$costCentre = null;

    _this.initialize = function () {
        let _settings = _this.settings();
        _this.$ffmc = _this.$root.find(_settings.ffmcSelector);
        _this.$deliveredIn = _this.$root.find(_settings.deliveredInSelector);
        _this.$broker = _this.$root.find(_settings.brokerSelector);
        _this.$date = _this.$root.find(_settings.dateSelector);
        _this.$quota = _this.$root.find(_settings.quotaSelector);
        _this.$remark = _this.$root.find(_settings.remarkSelector);
        _this.$reference = _this.$root.find(_settings.referenceSelector);
        _this.$subBroker = _this.$root.find(_settings.subBrokerSelector);
        _this.$costCentre = _this.$root.find(_settings.costCentreSelector);
        _this.initializeEvents();
    }

    _this.initializeEvents = function () {
        _this.$broker.off("change").on("change", function () {
            _this.emit("billingform.broker.change", _this.getBrokerValue());
        });
        _this.$subBroker.off("change").on("change", function () {
            _this.emit("billingform.subbroker.change", _this.getSubBrokerValue());
        });
    }

    _this.getBrokerValue = function () {
        let broker = _this.$broker[0];
        return broker && broker.value.toLowerCase() != "select" || null;
    }

    _this.getSubBrokerValue = function () {
        let subBroker = _this.$subBroker[0];
        return subBroker && subBroker.value.toLowerCase() != "select" || null;
    }
}

page.BulkPurchase.ForexDetailsForm = function (rootSelector, settings) {
    component.Form.call(this, rootSelector, settings);

    let _this = this;
    _this.$currencyName = null;
    _this.$currencyNote = null;
    _this.$quantity = null;
    _this.$rate = null;
    _this.$grossAmt = null;
    _this.$calculatedGross = null;
    _this.brokerFields = {
        $brokerPaise: null,
        $brokerPaiseAmt: null,
        $brokerCommAmt: null,
        $brokerTdsPercentage: null,
        $brokerTdsAmt: null,
        enable: function (enable) {
            _this.brokerFields.$brokerPaise.enable(enable);
            _this.brokerFields.$brokerPaiseAmt.enable(enable);
            _this.brokerFields.$brokerCommAmt.enable(enable);
            _this.brokerFields.$brokerTdsPercentage.enable(enable);
            _this.brokerFields.$brokerTdsAmt.enable(enable);
        }
    };
    _this.subBrokerFields = {
        $subBrokerPaise: null,
        $subBrokerPaiseAmt: null,
        $subBrokerCommAmt: null,
        $subBrokerTdsPercentage: null,
        $subBrokerTdsAmt: null,
        enable: function (enable) {
            _this.subBrokerFields.$subBrokerPaise.enable(enable);
            _this.subBrokerFields.$subBrokerPaiseAmt.enable(enable);
            _this.subBrokerFields.$subBrokerCommAmt.enable(enable);
            _this.subBrokerFields.$subBrokerTdsPercentage.enable(enable);
            _this.subBrokerFields.$subBrokerTdsAmt.enable(enable);
        }
    };

    _this.initializeFields = function () {
        _this.$currencyName = _this.$root.find(settings.currencyNameSelector);
        _this.$currencyNote = _this.$root.find(settings.currencyNoteSelector);
        _this.$quantity = _this.$root.find(settings.quantitySelector);
        _this.$rate = _this.$root.find(settings.rateSelector);
        _this.$grossAmt = _this.$root.find(settings.grossAmtSelector);
        _this.$calculatedGross = _this.$root.find(settings.calculatedGrossSelector);
        _this.brokerFields.$brokerPaise = _this.$root.find(settings.brokerFields.brokerPaiseSelector);
        _this.brokerFields.$brokerPaiseAmt = _this.$root.find(settings.brokerFields.brokerPaiseAmtSelector);
        _this.brokerFields.$brokerCommAmt = _this.$root.find(settings.brokerFields.brokerCommAmtSelector);
        _this.brokerFields.$brokerTdsPercentage = _this.$root.find(settings.brokerFields.brokerTdsPercentageSelector);
        _this.brokerFields.$brokerTdsAmt = _this.$root.find(settings.brokerFields.brokerTdsAmtSelector);
        _this.subBrokerFields.$subBrokerPaise = _this.$root.find(settings.subBrokerFields.subBrokerPaiseSelector);
        _this.subBrokerFields.$subBrokerPaiseAmt = _this.$root.find(settings.subBrokerFields.subBrokerPaiseAmtSelector);
        _this.subBrokerFields.$subBrokerCommAmt = _this.$root.find(settings.subBrokerFields.subBrokerCommAmtSelector);
        _this.subBrokerFields.$subBrokerTdsPercentage = _this.$root.find(settings.subBrokerFields.subBrokerTdsPercentageSelector);
        _this.subBrokerFields.$subBrokerTdsAmt = _this.$root.find(settings.subBrokerFields.subBrokerTdsAmtSelector);
    }

    _this.initialize = function () {
        _this.initializeFields();
    }
}

page.BulkPurchase.MainCommandPanel = function (rootSelector, settings) {
    component.CommandPanel.call(this, rootSelector, settings);
    let _this = this;

    _this.setCommandModeToView = function () {
        _this.enableViewCommands(true);
        _this.toggleViewCommands(true);
        _this.enableAddEditCommands(false);
        _this.toggleAddEditCommands(true);
        _this.emit("command.mode.view");
    }

    _this.setCommandModeToNone = function () {
        _this.enableViewCommands(false);
        _this.toggleViewCommands(true);
        _this.enableAddEditCommands(false);
        _this.toggleAddEditCommands(true);
        _this.emit("command.mode.none");
    }
}

page.BulkPurchase.ForexCommandPanel = function (rootSelector, settings) {
    component.CommandPanel.call(this, rootSelector, settings);
    let _this = this;

    _this.setCommandModeToView = function () {
        _this.enableViewCommands(true);
        _this.toggleViewCommands(true);
        _this.enableAddEditCommands(false);
        _this.toggleAddEditCommands(true);
        _this.emit("command.mode.view");
    }

    _this.setCommandModeToNone = function () {
        _this.enableViewCommands(false);
        _this.toggleViewCommands(true);
        _this.enableAddEditCommands(false);
        _this.toggleAddEditCommands(true);
        _this.emit("command.mode.none");
    }
}

page.BulkPurchase.PaymentCommandPanel = function (rootSelector, settings) {
    component.CommandPanel.call(this, rootSelector, settings);
    let _this = this;

    _this.setCommandModeToView = function () {
        _this.enableViewCommands(true);
        _this.toggleViewCommands(true);
        _this.enableAddEditCommands(false);
        _this.toggleAddEditCommands(true);
        _this.emit("command.mode.view");
    }

    _this.setCommandModeToNone = function () {
        _this.enableViewCommands(false);
        _this.toggleViewCommands(true);
        _this.enableAddEditCommands(false);
        _this.toggleAddEditCommands(true);
        _this.emit("command.mode.none");
    }
}
//#endregion

/**
 * A prototype for event handling mechanism for the BulkPurchase Page
 * @param bulkPurchasePage {page.BulkPurchase} The page instance
 */
page.BulkPurchase.Events = function BulkPurchaseEvents (bulkPurchasePage) {

    /**
     * A closure variable to hold reference for the execution context of instance
     * @type page.BulkPurchase.Events
     */
    let _this = this;

    /**
     * Initializes the page level event mechanism
     * @param settings {Object} The page settings
     */
    this.initializePageEvents = function initializePageEvents(settings) {
        // On change event of the broker dropdown from billing form.
        bulkPurchasePage.billingForm.on("billingform.broker.change", function (selectedValue) {
            if (bulkPurchasePage.forex.commandPanel.isAddMode() || bulkPurchasePage.forex.commandPanel.isEditMode()) {
                bulkPurchasePage.forex.form.brokerFields.enable(selectedValue !== null);
            }
        });

        // On change event of the sub-broker dropdown from billing form
        bulkPurchasePage.billingForm.on("billingform.subbroker.change", function (selectedValue) {
            if (bulkPurchasePage.forex.commandPanel.isAddMode() || bulkPurchasePage.forex.commandPanel.isEditMode()) {
                bulkPurchasePage.forex.form.subBrokerFields.enable(selectedValue !== null);
            }
        });

        // On main add click
        bulkPurchasePage.commandPanel.on("command.add", function () {
            // Toggle command button appearance
            bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Add);
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);

            // Enable the main forms and disable the inner forms i.e. forex and payment
            bulkPurchasePage.enableForms(false, true);
        });

        // On main edit click
        bulkPurchasePage.commandPanel.on("command.edit", function () {
            // Toggle command button appearance
            bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Edit);
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);

            // Enable the main forms and disable the inner forms i.e. forex and payment
            bulkPurchasePage.enableForms(false, true);
        });

        // On main delete click
        bulkPurchasePage.commandPanel.on("command.delete", function () {
        });

        // On main save click
        bulkPurchasePage.commandPanel.on("command.save", function () {
            let summaryFormData = bulkPurchasePage.forex.summaryForm.serializeJson();
            bulkPurchasePage.billingForm.postSaveData(bulkPurchasePage.saveUrl, summaryFormData);
        });

        // On main cancel click
        bulkPurchasePage.commandPanel.on("command.cancel", function () {
            bulkPurchasePage.billingForm.cancelSave();
            bulkPurchasePage.forex.summaryForm.cancelSave();
        });

        // On form successful save and cancel
        bulkPurchasePage.billingForm.on(["form.save.success", "form.cancel"], function () {
            bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.None);
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.None);

            // Disable the main forms and the inner forms i.e. forex and payment
            bulkPurchasePage.enableForms(false, false);
        });
    }

    /**
     * Initializes the forex tab level event mechanism
     * @param settings {Object} The page settings
     */
    this.initializeForexEvents = function initializeForexEvents(settings) {
        bulkPurchasePage.forex.commandPanel.on("command.mode.none", function () {
            bulkPurchasePage.forex.form.enable(false);
        });

        bulkPurchasePage.forex.commandPanel.on("command.mode.view", function () {
            bulkPurchasePage.forex.form.enable(false);
        });

        // On Forex row select, load the details for selected record
        bulkPurchasePage.forex.dataTable.on("table.row.select", function (eventArgs) {
            if (bulkPurchasePage.forex.commandPanel.isViewMode()) {
                bulkPurchasePage.forex.form.loadEditView(settings.forexDetailsSettings.editUrl, eventArgs, function () {
                    // We will need to disable the form and set the command mode to view, in order to get
                    // the desired behaviour
                    bulkPurchasePage.forex.form.enable(false);
                    bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
                });
            }
        });
    
        // On Forex add click, get add form from ajax
        bulkPurchasePage.forex.commandPanel.on("command.add", function () {
            bulkPurchasePage.forex.form.loadAddView(settings.forexDetailsSettings.addUrl);
        });

        let forexAction = null;
        // On Forex form set to Add mode
        bulkPurchasePage.forex.form.on("form.add.success", function () {
            forexAction = "Add";
            bulkPurchasePage.forex.form.initializeFields();
            bulkPurchasePage.forex.form.enable(true);
            bulkPurchasePage.setBrokerFields();
            bulkPurchasePage.forex.commandPanel.initializeCommandButtons();
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Add);

            bulkPurchasePage.commandPanel.enableRoot(false);
        });

        // On Forex edit click, get edit form from ajax
        bulkPurchasePage.forex.commandPanel.on("command.edit", function () {
            let selectedData = bulkPurchasePage.forex.dataTable.getSelectedRowData();
            bulkPurchasePage.forex.form.loadEditView(settings.forexDetailsSettings.editUrl, selectedData);
        });

        // On Forex form set to Edit mode
        bulkPurchasePage.forex.form.on("form.edit.success", function () {
            forexAction = "Edit";
            bulkPurchasePage.forex.form.initializeFields();
            bulkPurchasePage.forex.form.enable(true);
            bulkPurchasePage.setBrokerFields();
            // Since the Save and Cancel buttons are part of the form, we will need to re-fetch the controls,
            // so as to maintian uniformity in command events. We are also setting the command mode.
            bulkPurchasePage.forex.commandPanel.initializeCommandButtons();
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Edit);

            bulkPurchasePage.commandPanel.enableRoot(false);
        });

        // On Forex delete click, delete record via ajax call
        bulkPurchasePage.forex.commandPanel.on("command.delete", function () {
            bulkPurchasePage.forex.form.deleteRecord(settings.forexDetailsSettings.deleteUrl);
        });

        // On Record successful delete
        bulkPurchasePage.forex.form.on("form.delete.success", function () {
            bulkPurchasePage.forex.dataTable.reloadTable();
            // The below has been written, to select the first record post delete.
            // In case no records are left, then we reset the form to show empty fields.
            let selectFirstRowOnDraw = function () {
                if (bulkPurchasePage.forex.dataTable.getRowCount() > 0) {
                    bulkPurchasePage.forex.dataTable.selectRow(0);
                }
                else {
                    bulkPurchasePage.forex.form.loadAddView(settings.forexDetailsSettings.addUrl, function () {
                        // We will need to disable the form and set the command mode to view, in order to get
                        // the desired behaviour
                        bulkPurchasePage.forex.form.enable(false);
                        bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
                    });
                }
                bulkPurchasePage.forex.dataTable.off("table.draw", selectFirstRowOnDraw);
            }
            bulkPurchasePage.forex.dataTable.on("table.draw", selectFirstRowOnDraw);
        });

        // On Forex save click, save data via ajax call
        bulkPurchasePage.forex.commandPanel.on("command.save", function () {
            bulkPurchasePage.forex.form.postSaveData(settings.forexDetailsSettings.saveUrl, { action: forexAction });
        });

        // On Forex form save, reload table and disable form
        bulkPurchasePage.forex.form.on("form.save.success", function (savedData) {
            bulkPurchasePage.forex.dataTable.reloadTable();
            bulkPurchasePage.forex.form.enable(false);
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            if (bulkPurchasePage.commandPanel.isAddMode()) {
                bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Add);
            }
            else if (bulkPurchasePage.commandPanel.isEditMode()) {
                bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Edit);
            }
            bulkPurchasePage.commandPanel.enableRoot(true);
            forexAction = null;

            // The below code will execute only once, after a data has been successfully saved
            // The code has been written here, since the savedData is accessible in this scope
            let selectRowByIdOnDraw = function () {
                bulkPurchasePage.forex.dataTable.selectRowById("Id", savedData.Id);
                bulkPurchasePage.forex.dataTable.off("table.draw", selectRowByIdOnDraw);
            }
            bulkPurchasePage.forex.dataTable.on("table.draw", selectRowByIdOnDraw);
        });

        // On Forex cancel click, restore the Form view
        bulkPurchasePage.forex.commandPanel.on("command.cancel", function () {
            bulkPurchasePage.forex.form.cancelSave();
            bulkPurchasePage.payment.form.enable(false);
        });

        bulkPurchasePage.forex.form.on("form.cancel", function () {
            bulkPurchasePage.forex.dataTable.reloadTable();
            bulkPurchasePage.forex.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            if (bulkPurchasePage.commandPanel.isAddMode()) {
                bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Add);
            }
            else if (bulkPurchasePage.commandPanel.isEditMode()) {
                bulkPurchasePage.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Edit);
            }
            bulkPurchasePage.commandPanel.enableRoot(true);
            forexAction = null;
        });
    }

    /**
     * Initializes the payment tab level event mechanism
     * @param settings {Object} The page settings
     */
    this.initializePaymentEvents = function initializePaymentEvents(settings) {
        bulkPurchasePage.payment.commandPanel.on("command.mode.none", function () {
            bulkPurchasePage.payment.form.enable(false);
        });

        bulkPurchasePage.payment.commandPanel.on("command.mode.view", function () {
            bulkPurchasePage.payment.form.enable(false);
        });

        // This event will fire only one time, when the DataTable control is initialized
        bulkPurchasePage.payment.dataTable.on("table.init.complete", function () {
            bulkPurchasePage.payment.dataTable.$root.css({ "width": "100%" });
        });

        // On Payment row select, load the details for selected record
        bulkPurchasePage.payment.dataTable.on("table.row.select", function (eventArgs) {
            if (bulkPurchasePage.payment.commandPanel.isViewMode()) {
                bulkPurchasePage.payment.form.loadEditView(settings.paymentDetailsSettings.editUrl, eventArgs, function () {
                    // We will need to disable the form and set the command mode to view, in order to get
                    // the desired behaviour
                    bulkPurchasePage.payment.form.enable(false);
                    bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
                });
            }
        });
    
        // On Payment add click, get add form from ajax
        bulkPurchasePage.payment.commandPanel.on("command.add", function () {
            bulkPurchasePage.payment.form.loadAddView(settings.paymentDetailsSettings.addUrl);
        });

        let paymentAction = null;
        // On Payment form set to Add mode
        bulkPurchasePage.payment.form.on("form.add.success", function () {
            paymentAction = "Add";
            bulkPurchasePage.payment.form.enable(true);
            bulkPurchasePage.payment.commandPanel.initializeCommandButtons();
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Add);

            bulkPurchasePage.commandPanel.enableRoot(false);
        });

        // On Payment edit click, get edit form from ajax
        bulkPurchasePage.payment.commandPanel.on("command.edit", function () {
            let selectedData = bulkPurchasePage.payment.dataTable.getSelectedRowData();
            bulkPurchasePage.payment.form.loadEditView(settings.paymentDetailsSettings.editUrl, selectedData);
        });

        // On Payment form set to Edit mode
        bulkPurchasePage.payment.form.on("form.edit.success", function () {
            paymentAction = "Edit";
            bulkPurchasePage.payment.form.enable(true);
            // Since the Save and Cancel buttons are part of the form, we will need to re-fetch the controls,
            // so as to maintian uniformity in command events. We are also setting the command mode.
            bulkPurchasePage.payment.commandPanel.initializeCommandButtons();
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.Edit);

            bulkPurchasePage.commandPanel.enableRoot(false);
        });

        // On Payment delete click, delete record via ajax call
        bulkPurchasePage.payment.commandPanel.on("command.delete", function () {
            bulkPurchasePage.payment.form.deleteRecord(settings.paymentDetailsSettings.deleteUrl);
        });

        // On Record successful delete
        bulkPurchasePage.payment.form.on("form.delete.success", function () {
            bulkPurchasePage.payment.dataTable.reloadTable();
            // The below has been written, to select the first record post delete.
            // In case no records are left, then we reset the form to show empty fields.
            let selectFirstRowOnDraw = function () {
                if (bulkPurchasePage.payment.dataTable.getRowCount() > 0) {
                    bulkPurchasePage.payment.dataTable.selectRow(0);
                }
                else {
                    bulkPurchasePage.payment.form.loadAddView(settings.paymentDetailsSettings.addUrl, function () {
                        // We will need to disable the form and set the command mode to view, in order to get
                        // the desired behaviour
                        bulkPurchasePage.payment.form.enable(false);
                        bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
                    });
                }
                bulkPurchasePage.payment.dataTable.off("table.draw", selectFirstRowOnDraw);
            }
            bulkPurchasePage.payment.dataTable.on("table.draw", selectFirstRowOnDraw);
        });

        // On Payment save click, save data via ajax call
        bulkPurchasePage.payment.commandPanel.on("command.save", function () {
            bulkPurchasePage.payment.form.postSaveData(settings.paymentDetailsSettings.saveUrl, { action: paymentAction });
        });

        // On Payment form save, reload table and disable form
        bulkPurchasePage.payment.form.on("form.save.success", function (savedData) {
            bulkPurchasePage.payment.dataTable.reloadTable();
            bulkPurchasePage.payment.form.enable(false);
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            bulkPurchasePage.commandPanel.enableRoot(true);
            paymentAction = null;

            // The below code will execute only once, after a data has been successfully saved
            // The code has been written here, since the savedData is accessible in this scope
            let selectRowByIdOnDraw = function () {
                bulkPurchasePage.payment.dataTable.selectRowById("Id", savedData.Id);
                bulkPurchasePage.payment.dataTable.off("table.draw", selectRowByIdOnDraw);
            }
            bulkPurchasePage.payment.dataTable.on("table.draw", selectRowByIdOnDraw);
        });

        // On Payment cancel click, restore the Form view
        bulkPurchasePage.payment.commandPanel.on("command.cancel", function () {
            bulkPurchasePage.payment.form.cancelSave();
            bulkPurchasePage.payment.form.enable(false);
        });

        bulkPurchasePage.payment.form.on("form.cancel", function () {
            bulkPurchasePage.payment.dataTable.reloadTable();
            bulkPurchasePage.payment.commandPanel.setCommandMode(component.CommandPanel.CommandMode.View);
            bulkPurchasePage.commandPanel.enableRoot(true);
            paymentAction = null;
        });
    }

    /**
     * Initializes the internal components
     * @returns void
     */
    this.initialize = function initialize() {
        let _settings = bulkPurchasePage.settings();
        _this.initializePageEvents(_settings);
        _this.initializeForexEvents(_settings);
        _this.initializePaymentEvents(_settings);
    }
}