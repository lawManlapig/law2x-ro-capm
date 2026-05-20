sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"eqinv/test/integration/pages/EquipmentTypesSetList",
	"eqinv/test/integration/pages/EquipmentTypesSetObjectPage",
	"eqinv/test/integration/pages/EquipmentsSetObjectPage"
], function (JourneyRunner, EquipmentTypesSetList, EquipmentTypesSetObjectPage, EquipmentsSetObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('eqinv') + '/test/flp.html#app-preview',
        pages: {
			onTheEquipmentTypesSetList: EquipmentTypesSetList,
			onTheEquipmentTypesSetObjectPage: EquipmentTypesSetObjectPage,
			onTheEquipmentsSetObjectPage: EquipmentsSetObjectPage
        },
        async: true
    });

    return runner;
});

