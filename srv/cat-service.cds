using hc450.officesupplies as officesupplies from '../db/schema';

service CatalogService {
    @odata.draft.enable :true
    entity Products as projection on officesupplies.Products;
    entity Suppliers as projection on officesupplies.Suppliers;
}