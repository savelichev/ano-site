package net.anotheria.anosite.api.common;

//TODO change to 
public class APIException extends RuntimeException{

	public APIException(){
		
	}
	
	public APIException(String message){
		super(message);
	}
}
