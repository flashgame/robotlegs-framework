//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.framework
{
	import robotlegs.bender.framework.config.ConfigTestSuite;
	import robotlegs.bender.framework.context.ContextTestSuite;
	import robotlegs.bender.framework.guard.GuardTestSuite;
	import robotlegs.bender.framework.hook.HookTestSuite;
	import robotlegs.bender.framework.object.ObjectTestSuite;

	[RunWith("org.flexunit.runners.Suite")]
	[Suite]
	public class FrameworkTestSuite
	{

		/*============================================================================*/
		/* Public Properties                                                          */
		/*============================================================================*/

		public var config:ConfigTestSuite;

		public var context:ContextTestSuite;

		public var guard:GuardTestSuite;

		public var hook:HookTestSuite;

		public var object:ObjectTestSuite
	}
}