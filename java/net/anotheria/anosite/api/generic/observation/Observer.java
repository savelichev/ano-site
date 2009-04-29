package net.anotheria.anosite.api.generic.observation;


public interface Observer {
	/**
	 * This method is called by the SubjectManager if the update isn't bound to a specific user, but to current user instead.
	 * This method is important for APIs which support session-bound-caching in "My"-Methods.
	 * @param event
	 */
	public void notifySubjectUpdatedForCurrentUser(SubjectUpdateEvent event);
	/**
	 * This method is called whenever an update on a user is called. This is typically not the current user, so the update is
	 * important for caches of any kind (but not session bounded) in first line.
	 * @param event
	 */
	public void notifySubjectUpdatedForUser(SubjectUpdateEvent event);
	
}
