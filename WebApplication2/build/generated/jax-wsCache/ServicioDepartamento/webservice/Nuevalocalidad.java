
package webservice;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Clase Java para nuevalocalidad complex type.
 * 
 * <p>El siguiente fragmento de esquema especifica el contenido que se espera que haya en esta clase.
 * 
 * <pre>
 * &lt;complexType name="nuevalocalidad">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="nombre_localidad" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "nuevalocalidad", propOrder = {
    "nombreLocalidad"
})
public class Nuevalocalidad {

    @XmlElement(name = "nombre_localidad")
    protected String nombreLocalidad;

    /**
     * Obtiene el valor de la propiedad nombreLocalidad.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getNombreLocalidad() {
        return nombreLocalidad;
    }

    /**
     * Define el valor de la propiedad nombreLocalidad.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setNombreLocalidad(String value) {
        this.nombreLocalidad = value;
    }

}
