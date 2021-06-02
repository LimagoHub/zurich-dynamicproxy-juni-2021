package de;

import de.client.Client;
import de.common.LoggerProxy;
import de.math.Calculator;
import de.math.CalculatorImpl;

public class Main {

    public static void main(String[] args) {
        Calculator calculator = new CalculatorImpl();

        calculator = (Calculator) LoggerProxy.newInstance(calculator);

        Client client = new Client(calculator);

        client.run();
    }
}
