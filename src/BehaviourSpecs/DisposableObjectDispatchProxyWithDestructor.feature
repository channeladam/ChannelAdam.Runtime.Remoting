﻿Feature: Disposable Object Dispatch Proxy With Destructor

@UnitTest
Scenario: DisposableObjectDispatchProxyWithDestructor - UT-01 - Should return a value when calling a function through the object dispatch proxy
	Given a proxied function with a return value
	When the proxied function with a return value is called
	Then the value returned from the proxied function with a return value has the correct return value
	
@UnitTest
Scenario: DisposableObjectDispatchProxyWithDestructor - UT-02 - Should allow usage of return, in, ref and out parameters when calling a function through the object dispatch proxy
	Given a proxied function with all parameters
	When the proxied function with all parameters is called
	Then the return, out and ref parameters from the proxied function have the correct values

@UnitTest
Scenario: DisposableObjectDispatchProxyWithDestructor - UT-03 - Should allow usage of in, ref and out parameters when calling a method through the object dispatch proxy
	Given a proxied method with all parameters
	When the proxied method with all parameters is called
	Then the out and ref parameters from the proxied method have the correct values

@UnitTest
Scenario: DisposableObjectDispatchProxyWithDestructor - UT-10 - Should be able to dispose of the proxy and subsequently the proxied object
	When the dispatch proxy is disposed
	Then the proxied object is disposed

@UnitTest
Scenario: DisposableObjectDispatchProxyWithDestructor - UT-11 - Should be able to finalise the proxy and subsequently dispose of the proxied object
	Given the dispatch proxy is created so it can be finalised
	When the dispatch proxy is finalised
	Then the proxied object is disposed
