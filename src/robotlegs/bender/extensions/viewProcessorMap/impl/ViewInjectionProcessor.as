//------------------------------------------------------------------------------
//  Copyright (c) 2012 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package robotlegs.bender.extensions.viewProcessorMap.impl
{
	import flash.events.IEventDispatcher;
	import flash.utils.Dictionary;
	import org.swiftsuspenders.Injector;

	public class ViewInjectionProcessor
	{

		/*============================================================================*/
		/* Private Properties                                                         */
		/*============================================================================*/

		private const _injectedObjects:Dictionary = new Dictionary(true);

		/*============================================================================*/
		/* Public Functions                                                           */
		/*============================================================================*/

		public function process(view:Object, type:Class, injector:Injector):void
		{
			_injectedObjects[view] || injectAndRemember(view, injector);
		}

		public function unprocess(view:Object, type:Class, injector:Injector):void
		{
			// assumption is that teardown is not wanted.
			// if you *do* want teardown, copy this class
		}

		/*============================================================================*/
		/* Private Functions                                                          */
		/*============================================================================*/

		private function injectAndRemember(view:Object, injector:Injector):void
		{
			injector.injectInto(view);
			_injectedObjects[view] = view;
		}
	}
}
