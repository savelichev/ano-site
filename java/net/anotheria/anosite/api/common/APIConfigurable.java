package net.anotheria.anosite.api.common;

import org.configureme.annotations.Configure;
import org.configureme.annotations.ConfigureMe;

@ConfigureMe(name = "apiconfig")
public class APIConfigurable {
	@Configure	private boolean verboseMethodCalls;
	
	public APIConfigurable(){
	}

	public boolean isVerboseMethodCalls() {
		return verboseMethodCalls;
	}

	public void setVerboseMethodCalls(boolean value) {
		verboseMethodCalls = value;
	}

}
