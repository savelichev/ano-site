package net.anotheria.anosite.cms.helper.impls;

import net.anotheria.anosite.cms.helper.BoxSubHelper;
import net.anotheria.anosite.gen.aswebdata.data.Box;

public class IfSetBoxSubHelper implements BoxSubHelper{

	public String getFieldExplanation(Box box, String property) {

		if (property.equals(Box.PROP_PARAMETER1))
			return "Attribute name";
		if (property.equals(Box.PROP_PARAMETER2))
			return "Attribute value";
		return null;
	}

}
