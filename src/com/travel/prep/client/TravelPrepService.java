package com.travel.prep.client;

import com.google.gwt.user.client.rpc.RemoteService;
import com.google.gwt.user.client.rpc.RemoteServiceRelativePath;

/**
 * The client side stub for the RPC service.
 */
@RemoteServiceRelativePath("service")
public interface TravelPrepService extends RemoteService {
	public String greetServer(String name) throws IllegalArgumentException;
}
