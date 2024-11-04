/*
 * File: app/store/SiteRights.js
 *
 * This file was generated by Sencha Architect version 4.1.1.
 * http://www.sencha.com/products/architect/
 *
 * This file requires use of the Ext JS 6.2.x Classic library, under independent license.
 * License of Sencha Architect does not include license for Ext JS 6.2.x Classic. For more
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
			storeId: 'BaseRightsId',
			autoLoad: false,
			data: [
				{
					win: 'pos.desktopproduct',
					query: '#ExtGridSort',
					level: 1,
					action: 'replace',
					config: 'value',
					value: 'F01'
				},
				{
					win: 'pos.desktopproduct',
					query: '#sortCodeBtn',
					level: 1,
					action: 'replace',
					config: 'pressed',
					value: true
				},
				{
					win: 'pos.desktopproduct',
					query: '#sortDescriptionBtn',
					level: 1,
					action: 'replace',
					config: 'pressed',
					value: false
				},
				{
					win: 'screenviewport',
					query: '#posLangBtn',
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

	StartLoad: function() {
		keyboardStart =
				"BaseKeyMap.addBinding({key: Ext.event.Event.F4, fn: function() {ExecCtrl.entryFuncKey('FCT=710');} });";
	}

});