package com.jabh.util;

import javax.xml.parsers.FactoryConfigurationError;
import javax.xml.stream.XMLOutputFactory;
import javax.xml.stream.XMLStreamWriter;

import org.apache.axiom.om.OMAbstractFactory;
import org.apache.axiom.om.OMElement;
import org.apache.axiom.om.OMFactory;
import org.apache.axiom.om.OMNamespace;
import org.apache.axis2.AxisFault;
import org.apache.axis2.Constants;
import org.apache.axis2.addressing.EndpointReference;
import org.apache.axis2.client.Options;
import org.apache.axis2.client.ServiceClient;

public class TestNew {
private static String toEpr = "https://api.sandbox.paypal.com/v1/oauth2/token";
    
    public static void main(String[] args) throws AxisFault {

        Options options = new Options();
        options.setTo(new EndpointReference(toEpr));
        options.setTransportInProtocol(Constants.TRANSPORT_HTTP);
        
        options.setProperty(Constants.Configuration.ENABLE_REST, Constants.VALUE_TRUE);

        ServiceClient sender = new ServiceClient();
        sender.engageModule(Constants.MODULE_ADDRESSING);
        sender.setOptions(options);
        OMElement result = sender.sendReceive(getPayload());

        try {
            XMLStreamWriter writer = XMLOutputFactory.newInstance()
                    .createXMLStreamWriter(System.out);
            result.serialize(writer);
            writer.flush();
        } catch (FactoryConfigurationError e) {
            e.printStackTrace();
        } catch (javax.xml.stream.XMLStreamException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (javax.xml.stream.FactoryConfigurationError e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

    private static OMElement getPayload() {
        OMFactory fac = OMAbstractFactory.getOMFactory();
        OMNamespace omNs = fac.createOMNamespace(
                "http://example1.org/example1", "example1");
        OMElement method = fac.createOMElement("echo", omNs);
        OMElement value = fac.createOMElement("Text", omNs);
        value.addChild(fac.createOMText(value, "Axis2 Echo String "));
        method.addChild(value);

        return method;
    }
}