package karate.ivrservice;

import com.intuit.karate.core.MockServer;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.*;

public class IvrAdapterRunner {

    static MockServer serverGet;
     static MockServer serverOctopus;


     @BeforeAll
      static void beforeAll() {
          serverGet = MockServer.feature("classpath:karate/ivrservice/getService-mock.feature").http(8088).build();
         //   serverOctopus = MockServer.feature("classpath:karate/ivrservice/octopus-mock.feature").http(8082).build();
      }

      @AfterAll
      static void afterAll() {
          serverGet.stop();
       //   serverOctopus.stop();

      }
    @Karate.Test
    Karate testall() {
        return Karate.run().relativeTo(getClass());
    }

}

