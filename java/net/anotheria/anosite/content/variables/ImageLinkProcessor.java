package net.anotheria.anosite.content.variables;

import java.util.List;

import net.anotheria.anoprise.metafactory.MetaFactory;
import net.anotheria.anoprise.metafactory.MetaFactoryException;
import net.anotheria.anosite.gen.asresourcedata.data.Image;
import net.anotheria.anosite.gen.asresourcedata.service.IASResourceDataService;

import org.apache.log4j.Logger;

/**
 * Processor for images uploaded via IASResourceDataService.
 * @author lrosenberg
 *
 */
public class ImageLinkProcessor extends XLinkProcessor{
	private static IASResourceDataService service;
	static{
		try{
			service = MetaFactory.get(IASResourceDataService.class);
		}catch(MetaFactoryException e){
			Logger.getLogger(ImageLinkProcessor.class).fatal("Not properly initialized, can't find resource data service.");
		}
		
	}

	@Override
	protected String getFileName(String variable) {
		try{
			List<Image> images = service.getImagesByProperty(Image.PROP_NAME, variable);
			if (images.size()>0)
				return images.get(0).getImage();
			if (images.size()==0)
				getLog().warn("File not found: "+variable);
		}catch(Exception e){
			getLog().warn("getFileName(" + variable + ") failure: ", e);
		}
		return null;
	}
}
