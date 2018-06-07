#! /usr/bin/env node

console.log("Server Initializing");

require("dotenv").config();
require("dotenv-safe").config({
    allowEmptyValues: true
})

const express = require("express");
const app = express();

const bodyParser = require("body-parser");
const db = require("./database");

const path = require("path");

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept, Authorization");
    next();
});

// index landing page
app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname + '/static/index.html'));
});

// useful for grabing data out of post requests
app.use(bodyParser.urlencoded({
    extended: true
}));

/**
 * Parses the text as JSON and exposes the resulting object on req.body.
 */
app.use(bodyParser.json());

app.get("/targets", function(req, res) {
    getTargets(req, res);
});

app.post("/targets", function(req, res) {
    console.log(req.body);
    createTarget(req, res);
});

app.put("/targets/:targetId", function(req, res) {
    var targetId = req.params.targetId;
    console.log(req.body);
    updateTarget(req, res);
});

app.delete("/targets/:targetId", function(req, res) {
    var targetId = req.params.targetId;
    console.log(targetId);
    deleteTarget(targetId);
});

let createTarget = (req, res) => {
    console.log("createTarget", req.body);
    let target = req.body;
    db.insertTarget(target.company_name, target.logo, target.status,
            JSON.stringify(target.company_profile), JSON.stringify(target.financial_performance),
            JSON.stringify(target.key_contacts))
        .then(() => {
            statusObj = {};
            statusObj.status = 201;
            statusObj.info = "New Target created successfully";
            res.end(JSON.stringify(statusObj));
        })
        .catch(error => {
            console.log(error);
            errorObj = {};
            errorObj.status = 500;
            errorObj.info = "Failed to store target";
            console.log(error);
            res.end(JSON.stringify(errorObj));
        })
};

let getTargets = (req, res) => {
    db.getAllTargets()
        .then(targets => {
            statusObj = {};
            statusObj.status = 200;
            statusObj.info = "Targets retrieved successfully";
            res.end(JSON.stringify(targets));
        })
        .catch(error => {
            console.log(error);
            errorObj = {};
            errorObj.status = 500;
            errorObj.info = "Failed to get targets";
            console.log(error);
            res.end(JSON.stringify(errorObj));
        })
}

let updateTarget = (req, res) => {
    console.log("updateTarget", req.body);
    let target = req.body;
    db.updateTarget(target.company_name, target.logo, target.status,
            JSON.stringify(target.company_profile), JSON.stringify(target.financial_performance),
            JSON.stringify(target.key_contacts))
        .then(() => {
            statusObj = {};
            statusObj.status = 200;
            statusObj.info = "Target updated successfully";
            res.end(JSON.stringify(statusObj));
        })
        .catch(error => {
            console.log(error);
            errorObj = {};
            errorObj.status = 500;
            errorObj.info = "Failed to update target";
            console.log(error);
            res.end(JSON.stringify(errorObj));
        })
};

let deleteTarget = (targetId) => {
    db.deleteTarget(targetId)
        .then(targets => {
            statusObj = {};
            statusObj.status = 204;
            statusObj.info = "Target deleted successfully";
            res.end(JSON.stringify(targets));
        })
        .catch(error => {
            console.log(error);
            errorObj = {};
            errorObj.status = 500;
            errorObj.info = "Failed to delete targets";
            console.log(error);
            res.end(JSON.stringify(errorObj));
        })
}

app.listen(process.env.PORT || 3000, () => console.log("Server is now listening."));