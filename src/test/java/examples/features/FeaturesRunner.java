package examples.features;


import com.intuit.karate.junit5.Karate;

public class FeaturesRunner {

    @Karate.Test
    Karate testLogin() {
        return Karate.run("login").relativeTo(getClass());
    }
}
