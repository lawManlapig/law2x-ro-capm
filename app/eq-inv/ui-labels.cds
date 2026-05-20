using ROService as service from '../../srv/service';

annotate service.EquipmentTypesSet with {
    type        @(Common.Label: '{i18n>type}');
    description @(Common.Label: '{i18n>desc}');
};

annotate service.EquipmentsSet with {
    name            @(Common.Label: '{i18n>name}');
    description     @(Common.Label: '{i18n>desc}');
    buyingPrice     @(Common.Label: '{i18n>bprc}');
    sellingPrice    @(Common.Label: '{i18n>sprc}');
    stock           @(Common.Label: '{i18n>stck}');
};
