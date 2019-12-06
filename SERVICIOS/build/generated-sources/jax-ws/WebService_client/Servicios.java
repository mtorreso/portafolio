
package WebService_client;

import java.util.List;
import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.11-b150120.1832
 * Generated source version: 2.2
 * 
 */
@WebService(name = "Servicios", targetNamespace = "http://WebService/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface Servicios {


    /**
     * 
     * @return
     *     returns java.util.List<WebService_client.Departamento>
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "listardepartamentos", targetNamespace = "http://WebService/", className = "WebService_client.Listardepartamentos")
    @ResponseWrapper(localName = "listardepartamentosResponse", targetNamespace = "http://WebService/", className = "WebService_client.ListardepartamentosResponse")
    @Action(input = "http://WebService/Servicios/listardepartamentosRequest", output = "http://WebService/Servicios/listardepartamentosResponse")
    public List<Departamento> listardepartamentos();

}