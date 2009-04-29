package net.anotheria.anosite.api.content;

import net.anotheria.anosite.api.common.APIFactory;

public class ContentAPIFactory implements APIFactory<ContentAPI>{

	public ContentAPI createAPI() {
		return new ContentAPIImpl();
	}

}
