//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted you to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package org.swiftsuspenders.v2.dsl
{

	public interface IFactoryMap
	{
		function get mappings():Vector.<IFactoryMapping>;

		function addMapping(mapping:IFactoryMapping):void;
	}
}
