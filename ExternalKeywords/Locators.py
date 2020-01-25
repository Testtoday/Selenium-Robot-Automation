import json
import jsonpath

def read_locator_from_json(locatorname):
    f = open('C:/Users/Andre/PycharmProjects/RobotAutomation/JsonFiles/Element.json')
    response = json.loads(f.read())
    value = jsonpath.jsonpath(response,locatorname)
    return value [0]

