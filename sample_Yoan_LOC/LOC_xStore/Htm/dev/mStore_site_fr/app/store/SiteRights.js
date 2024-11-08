/*
 * File: app/store/SiteRights.js
 *
 * This file was generated by Sencha Architect
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Ext JS 6.2.x Modern library, under independent license.
 * License of Sencha Architect does not include license for Ext JS 6.2.x Modern. For more
 * details see http://www.sencha.com/license or contact license@sencha.com.
 *
 * This file will be auto-generated each and everytime you save your project.
 *
 * Do NOT hand edit this file.
 */

Ext.define('SMS.store.SiteRights', {
	extend: 'Ext.data.Store',

	requires: [
		'Ext.data.field.Field'
	],

	constructor: function(cfg) {
		var me = this;
		cfg = cfg || {};
		me.callParent([Ext.apply({
			storeId: 'SiteRightsId',
			autoLoad: false,
			data: [
				{
					win: 'posstartmenu',
					query: '#posLinkBtn',
					level: 1,
					action: 'replace',
					config: 'hidden',
					value: false
				},
				{
					win: 'posstartmenu',
					query: '#frenchBtn',
					level: 1,
					action: 'replace',
					config: 'hidden',
					value: false
				},
				{
					win: 'startlogin',
					query: '#languageLabel',
					level: 1,
					action: 'replace',
					config: 'hidden',
					value: false
				}
			],
			fields: [
				{
					name: 'win'
				},
				{
					name: 'query'
				},
				{
					name: 'level'
				},
				{
					name: 'action'
				},
				{
					name: 'config'
				},
				{
					name: 'value'
				}
			]
		}, cfg)]);
	},

	StartLoad: function(ctrl) {

	}

});