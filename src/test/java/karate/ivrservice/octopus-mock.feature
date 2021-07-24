Feature: Stateful mock server

  Background:
    * configure cors = true

    Scenario: pathMatches('/soap-api/services/octopus')
      * def responseHeaders = { 'Content-Type': 'application/soap+xml; charset=utf-8' }
      * def response = read('responses/octopus/responseIVRCardWithoutPin.xml')

    Scenario: AlternativeOctopus
      * def responseStatus = 404
