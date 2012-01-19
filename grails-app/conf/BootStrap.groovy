import com.flatdigs.auth.*
import com.flatdigs.util.State
import com.flatdigs.Property
import com.flatdigs.Property.PropertyType

class BootStrap {
	

    def init = { servletContext ->
		
		def userRole = SecRole.findByAuthority("ROLE_USER") ?: new SecRole(authority : "ROLE_USER").save();
		def adminRole = SecRole.findByAuthority("ROLE_ADMIN") ?: new SecRole(authority : "ROLE_ADMIN").save();
		def renterRole = SecRole.findByAuthority("ROLE_RENTER") ?: new SecRole(authority : "ROLE_RENTER").save();

		userRole.save(flush : true, failOnError : true);
		adminRole.save(flush : true, failOnError : true);
		renterRole.save(flush : true, failOnError : true);
		
		State il = new State(name : "Illinois", nameShort : "IL").save()
		State ny = new State(name : "New York", nameShort : "NY").save()
		
		Property property2 = new Property(streetNumber: "1143", streetName : "West George Street",
			city : "Chicago", state : il, zip : 60657, floors : 3,
			latitude: "41.9341520", longitude : "-87.6581551", propertyType : PropertyType.APARTMENT_BUILDING).save(flush : true, failOnError : true);
		
    }
    def destroy = {
    }
}
