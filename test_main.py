from json import loads as json_loads

from main import app


def test_hello():
    request, response = app.test_client.get('/')
    results = json_loads(response.text)
    assert results.get('hello') == 'world'
