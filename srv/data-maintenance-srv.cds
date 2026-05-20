using {db.ro.dm as db} from '../db/schema';

service ROService {
    entity EquipmentTypesSet as projection on db.EquipmentTypes;
    entity EquipmentsSet     as projection on db.Equipments;
}
