const Model = require('./Model')
const enter = require('./db')

let model = new Model;

enter.connect(function (err){
    if(err){
        return console.error("ERROR: " + err.message)
    } else {
        console.log("Connection --- ok")
    }
})

model.find(5)

model.find(6)

model.delete(6)

model.find(6)

model.save(['SPIDER MAN', 'blue + red', 'human', 3])



enter.end(err => {
    if(err) {
        console.log(err)
        return err
    } else {
        console.log("Database --- close")
    }
})