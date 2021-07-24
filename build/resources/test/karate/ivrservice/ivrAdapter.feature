Feature: Tests for IVR adapter

  Background:
   # * url adapterIvrUrl


      # This Works
    Scenario: Get a Persoproduct Without Pin
      Given url 'http://localhost:8080/soa-infra/services/ivr/PersoproductIVRReqA/V1/GetPersoproduct'
      Given request read('request/IVR/goodIVR88.xml')
      When soap action 'GetPersoproduct'
      Then  status 200
      And match response == read('responses/IVR/RespIVRWithoutPin.xml')
      And match response /Envelope/Body/GetPersoproductResponseIVR/EBMHeader/EBMID =='9b19a25-0ad9-4456-af62-f7b065c82e21'


     # This Works
    Scenario: Get a Persoproduct With RealPinCover
        Given url 'http://localhost:8080/soa-infra/services/ivr/PersoproductIVRReqA/V1/GetPersoproduct'
        Given request read('request/IVR/goodIVR90.xml')
        When soap action 'GetPersoproduct'
        Then  status 200
        And match response == read('responses/IVR/RespIVRWithRealPin.xml')
        And match response /Envelope/Body/GetPersoproductResponseIVR/EBMHeader/EBMID =='9b19a25-0ad9-4456-af62-f7b065c82e21'


       # This Works
     Scenario: Get a Persoproduct With VirtualPinCover
        Given url 'http://localhost:8080/soa-infra/services/ivr/PersoproductIVRReqA/V1/GetPersoproduct'
        Given request read('request/IVR/goodIVR91.xml')
        When soap action 'GetPersoproduct'
        Then  status 200
        And match response == read('responses/IVR/RespIVRWithVirtPin.xml')
        And match response /Envelope/Body/GetPersoproductResponseIVR/EBMHeader/EBMID =='9b19a25-0ad9-4456-af62-f7b065c82e21'


      # This Works
     # Scenario: Get a Persoproduct with RealPinCover and VirtPinCover
      #  Given url 'http://localhost:8080/soa-infra/services/ivr/PersoproductIVRReqA/V1/GetPersoproduct'
      #  Given request read('request/IVR/goodIVR89.xml')
      #  When soap action 'GetPersoproduct'
      #  Then  status 200
      #  And match response == read('responses/IVR/RespIVRWithRealAndVirtPin.xml')
      #  And match response /Envelope/Body/GetPersoproductResponseIVR/EBMHeader/EBMID =='9b19a25-0ad9-4456-af62-f7b065c82e21'


      # This Works
       Scenario: Entity Not Found
        Given url 'http://localhost:8080/soa-infra/services/ivr/PersoproductIVRReqA/V1/GetPersoproduct'
        Given request read('request/IVR/EntityNotFound.xml')
        When soap action 'GetPersoproduct'
        Then  status 200
        And match response == read('responses/IVR/EntityNotFound.xml')
        And match response /Envelope/Body/GetPersoproductResponseIVR/EBMHeader/EBMID =='89b19a25-0ad9-4456-af62-f7b065c82e55'