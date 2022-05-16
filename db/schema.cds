namespace hc450.officesupplies;
using { Currency } from '@sap/cds/common';

entity Products {
   @common.Label : 'UUID'
 Key ID : UUID;
    identifier : String @common.label : 'ProuctID';
    title : localized String;
    description : localized String;
    availability : Integer;
    storage_capacity : Integer;
    criticality : Integer;
    price : Decimal(9, 2);
    currency : Currency;
    supplier : Association to Suppliers;
    image_url : String;
}

entity Suppliers{
Key ID : UUID;
identifier : String;
name : String;
phone : String;
building : String;
street : String @multiline;
poscode : String;
city : String;
country : String;
products : Composition of many Products on products.supplier = $self;

}
