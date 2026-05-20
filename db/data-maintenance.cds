using {
    cuid,
    managed
} from '@sap/cds/common';

namespace db.ro.dm;

// Parent Entity
entity EquipmentTypes : cuid {
    type        : String;
    description : String;
    equipments  : Composition of many Equipments
                      on equipments.equipmentType = $self;
}

// Child Entity
entity Equipments : cuid {
    equipmentType : Association to EquipmentTypes;
    name          : String;
    description   : String;
    buyingPrice   : Integer;
    sellingPrice  : Integer;
    stock         : Integer;
}
