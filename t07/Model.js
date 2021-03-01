const enter = require('./db')

class Model{
    constructor(props) {
        if(props) {
            this.id = props.id;
            this.name = props.name;
            this.description = props.description;
            this.race = props.race;
            this.class_role = props.class_role;
        }
    }
    find(id){
        enter.query(`SELECT * FROM heroes where heroes.id = ${id}`, (err, result) => {
            if(result.length) {
                this.id = result[0].id
                this.name = result[0].name
                this.description = result[0].description
                this.race = result[0].race
                this.class_role = result[0].class_role
                console.log(this)
            }else{
                console.log(`Dont find hero with id: ${id}`)
            }
        })
    }
    delete(id){
        enter.query(`DELETE FROM heroes WHERE heroes.id = ${id}`, (err, result) => {
            if(err){
                console.log(err)
            }
        })
    }
    save(props){
        const hero = props;
        console.log(hero)
        const sql = `INSERT INTO heroes(name, description, race, class_role)
                        VALUES (?, ?, ?, ?)
                        ON DUPLICATE KEY UPDATE
                        name = VALUES(name),
                        description = VALUES(description),
                        race = VALUES(race),
                        class_role = VALUES(class_role);`
        enter.query(sql, hero, (err, result) => {
            if(err)
                console.log(err)
            else console.log("hero added or updated")
        })
    }
}


module.exports = Model