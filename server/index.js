const grpc = require('grpc');
const protoLoader = require('@grpc/proto-loader');
const packageDef = protoLoader.loadSync("calculator.proto");
const grpcObject = grpc.loadPackageDefinition(packageDef);
const calculatorPackage = grpcObject.calculatorProto;

const server = new grpc.Server();

let map = {
    'add' : add,
    'subtract' : subtract,
    'multiply' : multiply,
    'divide' : divide,
};


server.bind('0.0.0.0:3000', grpc.ServerCredentials.createInsecure());
server.addService(calculatorPackage.Calculate.service,
    {
        'add' : add,
        'subtract' : subtract,
        'multiply' : multiply,
        'divide' : divide,
    });
server.start();

function add(call, callback){
    console.log(`client requested to add ${call.request.a.low} and ${call.request.b.low}`);
    let result = call.request.a.low + call.request.b.low;
    let resultMap = {'result': result};
    callback(null,resultMap);
}

function subtract(){
    let result = call.request.a.low - call.request.b.low;
    let resultMap = {'result': result};
    callback(null,resultMap);
}

function multiply(){
    let result = call.request.a.low * call.request.b.low;
    let resultMap = {'result': result};
    callback(null,resultMap);
}

function divide(){
    let result = call.request.a.low / call.request.b.low;
    let resultMap = {'result': result};
    callback(null,resultMap);
}