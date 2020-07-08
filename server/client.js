const grpc = require('grpc');
const protoLoader = require('@grpc/proto-loader');
const packageDef = protoLoader.loadSync("calculator.proto");
const grpcObject = grpc.loadPackageDefinition(packageDef);
const calculatorPackage = grpcObject.calculatorProto;

const client = new calculatorPackage.Calculate('localhost:3000',grpc.credentials.createInsecure());

client.add({
    'a' : 11,
    'b' : 21,
}, (err, response)=>{
    console.log('server responds');
    console.log("result of 11+21 is " + response.result);
});