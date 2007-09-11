package net.anotheria.anosite.content.servlet;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.anotheria.anosite.gen.data.PageStyle;
import net.anotheria.anosite.gen.service.ASMetaDataServiceFactory;
import net.anotheria.anosite.gen.service.IASMetaDataService;
import net.java.dev.moskito.web.MoskitoHttpServlet;

public class StyleSheetServlet extends MoskitoHttpServlet{
	
	private IASMetaDataService metaDataService;
	
	public void init(ServletConfig config) throws ServletException{
		super.init(config);
		metaDataService = ASMetaDataServiceFactory.createASMetaDataService();
	}

	@Override
	protected void moskitoDoGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		String path = req.getPathInfo();
		if (path.length()>0 && path.charAt(0)=='/')
			path = path.substring(1);
		int indexOfDot = path.indexOf('.');
		if (indexOfDot!=-1)
			path = path.substring(0, indexOfDot);
		PageStyle style = metaDataService.getPageStyle(path);
		
		OutputStream out = res.getOutputStream();
		out.write(style.getCss().getBytes());
		out.flush();
		out.close();
	}
}
