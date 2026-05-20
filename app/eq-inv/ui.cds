using ROService as service from '../../srv/service';

// Main Entity
annotate service.EquipmentTypesSet with @(
    UI.HeaderInfo             : {Title: {Value: type}},

    UI.FieldGroup #MainDetails: {
        $Type: 'UI.FieldGroupType',
        Data : [{
            $Type: 'UI.DataField',
            Value: description,
        }, ],
    },

    UI.Facets                 : [
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'MainDetails',
            Label : 'Details',
            Target: '@UI.FieldGroup#MainDetails',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID    : 'Equipements',
            Label : 'Equipments List',
            Target: 'equipments/@UI.LineItem#Equipments',
        },
    ],

    UI.LineItem               : [
        {
            $Type             : 'UI.DataField',
            Value             :

            type,

            @HTML5.CssDefaults: {width: '9rem'}
        },
        {
            $Type             : 'UI.DataField',
            Value             : description,
            @HTML5.CssDefaults: {width: '25rem'}
        },
    ],
);

// Child Entity
annotate service.EquipmentsSet with @(
    UI.HeaderInfo             : {
        Title      : {Value: name},
        Description: {Value: equipmentType.type}
    },

    UI.FieldGroup #MainDetails: {
        $Type: 'UI.FieldGroupType',
        Data : [
            {
                $Type: 'UI.DataField',
                Value: description,
            },
            {
                $Type: 'UI.DataField',
                Value: buyingPrice,
            },
            {
                $Type: 'UI.DataField',
                Value: sellingPrice,
            },
            {
                $Type: 'UI.DataField',
                Value: stock,
            },
        ],
    },

    UI.Facets                 : [{
        $Type : 'UI.ReferenceFacet',
        ID    : 'MainDetails',
        Label : 'Details',
        Target: '@UI.FieldGroup#MainDetails',
    }, ],


    UI.LineItem #Equipments   : [

        {
            $Type: 'UI.DataField',
            Value: name,
        },
        {
            $Type: 'UI.DataField',
            Value: description,
        },
        {
            $Type: 'UI.DataField',
            Value: buyingPrice,
        },
        {
            $Type: 'UI.DataField',
            Value: sellingPrice,
        },
        {
            $Type      : 'UI.DataField',
            Value      : stock,
            Criticality: #Critical
        }
    ],
);
