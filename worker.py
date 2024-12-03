import json
from fastapi import FastAPI
from fastapi.responses import JSONResponse

app = FastAPI()

@app.get("/")
def read_root():
    return JSONResponse(content={"message": "Hello, World!"})

@app.post("/predict")
def predict(data: dict):
    # Example of your Fake News prediction logic here
    # This could be using NLP models to classify
    return JSONResponse(content={"prediction": "Real"})

