Feature: Stateful mock server

    Background:
      * configure cors = true

      # This Works
    Scenario: pathMatches('PersoproductGet') && bodyPath('$.body.listData[0].entityId') =="42722907899988888" && methodIs('POST')
      * def responseHeaders = { 'Content-Type': 'application/json'}
      * def response = read('responses/getservice/ResponsePPWithoutPin.json')

  # This Works
    Scenario: pathMatches('PersoproductGet') && bodyPath('$.body.listData[0].entityId') =="42722907899988890" && methodIs('POST')
      * def responseHeaders = { 'Content-Type': 'application/json'}
      * def response = read('responses/getservice/ResponsePPWithRealPin.json')

    Scenario: pathMatches('PersoproductGet') && bodyPath('$.body.listData[0].entityId') =="42722907899988891" && methodIs('POST')
      * def responseHeaders = { 'Content-Type': 'application/json'}
      * def response = read('responses/getservice/ResponsePPWithVirtPin.json')

    # This Works
    Scenario: pathMatches('PersoproductGet') && bodyPath('$.body.listData[0].entityId') =="4272290789998889156454" && methodIs('POST')
      * def responseHeaders = { 'Content-Type': 'application/json'}
      * def response = read('responses/getservice/responseNotFound.json')


    Scenario: AlternativeGet
      * def responseStatus = 404