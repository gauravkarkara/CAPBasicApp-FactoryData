using {factory.db as db} from '../db/data-model';


service factoryService {
    entity Products  @(restrict : [
        {
            grant : ['READ'],
            to    : ['ProductsViewer']
        },
        {
            grant : ['*'],
            to    : ['ProductsManager']
        }
    ]) as projection on db.Products;

    entity Suppliers @(restrict : [
        {
            grant : ['READ'],
            to    : ['SuppliersViewer']
        },
        {
            grant : ['*'],
            to    : ['SuppliersManager']
        }
    ]) as projection on db.Suppliers;

}