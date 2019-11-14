
package WebService_client;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the WebService_client package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _Listardepartamentos_QNAME = new QName("http://WebService/", "listardepartamentos");
    private final static QName _ListardepartamentosResponse_QNAME = new QName("http://WebService/", "listardepartamentosResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: WebService_client
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Listardepartamentos }
     * 
     */
    public Listardepartamentos createListardepartamentos() {
        return new Listardepartamentos();
    }

    /**
     * Create an instance of {@link ListardepartamentosResponse }
     * 
     */
    public ListardepartamentosResponse createListardepartamentosResponse() {
        return new ListardepartamentosResponse();
    }

    /**
     * Create an instance of {@link Departamento }
     * 
     */
    public Departamento createDepartamento() {
        return new Departamento();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Listardepartamentos }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listardepartamentos")
    public JAXBElement<Listardepartamentos> createListardepartamentos(Listardepartamentos value) {
        return new JAXBElement<Listardepartamentos>(_Listardepartamentos_QNAME, Listardepartamentos.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link ListardepartamentosResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://WebService/", name = "listardepartamentosResponse")
    public JAXBElement<ListardepartamentosResponse> createListardepartamentosResponse(ListardepartamentosResponse value) {
        return new JAXBElement<ListardepartamentosResponse>(_ListardepartamentosResponse_QNAME, ListardepartamentosResponse.class, null, value);
    }

}
