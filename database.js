const pg = require('pg-promise')();

const builder = process.env.USER
const dbconfig = {
    host: 'localhost',
    port: 5432,
    database: 'acquirer',
    user: builder,
    password: 'acquirer'
}
const db = pg(dbconfig);

let getAllTargets = () => {
    return db.query(`SELECT * FROM targets;`)
};

let insertTarget = (company_name, logo, status, company_profile, financial_performance, key_contacts) => {
    let query = `INSERT INTO targets (company_name, logo, status, company_profile, financial_performance, key_contacts)
        VALUES ('${company_name}', '${logo}', '${status}', '${company_profile}', '${financial_performance}', '${key_contacts}');`;
    console.log(query);
    return db.query(query);
};

let updateTarget = (company_name, logo, status, company_profile, financial_performance, key_contacts) => {
    let query = `UPDATE targets 
        SET company_name = '${company_name}', logo = '${logo}', status = '${status}', company_profile = '${company_profile}', 
        financial_performance='${financial_performance}', key_contacts='${key_contacts}' WHERE id = ${id});`;
    console.log(query);
    return db.query(query);
};

let deleteTarget = (id) => {
    return db.query(`DELETE FROM targets where id=${id};`)
};

module.exports = {
    getAllTargets,
    insertTarget,
    updateTarget,
    deleteTarget
};