from behave import *
import api
from fastapi.testclient import TestClient

@given("que deseo calcular dos numeros")
def step_implementation(context):
    context.app = TestClient(api.app)

@when('yo ingrese los numeros {num1} y {num2} en la operacion {operacion}')
def step_implementation(context, num1, num2, operacion):
    context.api_response = context.app.get(f'/{operacion}?num1={num1}&num2={num2}')
    assert 200 == context.api_response.status_code

@then('El resultado {result} debe ser la suma de ambos')
def step_implementation(context, result):
    assert str(result) == str(context.api_response.json().get('total'))

@then('El resultado {result} debe ser la resta de ambos')
def step_implementation(context, result):
    assert str(result) == str(context.api_response.json().get('total'))
