const db = require("../data/dbConfig");

module.exports = {
  find,
  findById,
  findSteps,
  add,
  update,
  remove,
  addStep
}

function find() {
  return db("schemes");
};

function findById(id) {
  return db("schemes")
    .where({ id })
    .first();
};

function findSteps(id) {
  return db("steps")
    .join("schemes", "steps.scheme_id", "schemes.id")
    .select("steps.id", "schemes.scheme_name", "steps.step_number", "steps.instructions")
    .where("schemes.id", id)
    .orderBy("steps.step_number")
};

function add(schemeInfo) {
  return db("schemes")
    .insert(schemeInfo)
    .then(ids => {
      return findById(ids[0])
    })
};

function addStep(stepData, id) {
  return db("steps")
    .insert({ step_number: stepData.step_number, instructions: stepData.instructions, scheme_id: id })
};

function update(changes, id) {
  return db("schemes")
    .where({ id })
    .update(changes)
};

function remove(id) {
  return db("schemes")
    .where({ id })
    .del();
};



