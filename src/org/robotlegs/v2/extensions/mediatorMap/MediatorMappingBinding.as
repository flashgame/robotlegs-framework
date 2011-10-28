package org.robotlegs.v2.extensions.mediatorMap
{
	import flash.utils.Dictionary;
	import org.swiftsuspenders.Reflector;
	import org.robotlegs.v2.core.api.ITypeMatcher;
	import org.robotlegs.v2.core.api.ITypeFilter;
	import org.robotlegs.v2.extensions.hooks.GuardsAndHooksMapBinding;
	import org.robotlegs.v2.extensions.hooks.IGuardsAndHooksMapBinding;
	
	public class MediatorMappingBinding extends GuardsAndHooksMapBinding implements IMediatorMappingBinding
	{	
		protected var _viewFCQNMap:Dictionary;

		protected var _typeFilterMap:Dictionary;

		protected var _mediatorClazz:Class;
		
		protected var _viewClazz:Class;
		
		protected var _reflector:Reflector;
		
		protected var _typeFilter:ITypeFilter;

		public function MediatorMappingBinding(viewFCQNMap:Dictionary, typeFilterMap:Dictionary, mediatorClazz:Class, reflector:Reflector)
		{
			_viewFCQNMap = viewFCQNMap;
			_typeFilterMap = typeFilterMap;
			_mediatorClazz = mediatorClazz;
			_reflector = reflector;
		}

		public function get mediatorClass():Class
		{
			return _mediatorClazz;
		}
		
		public function get viewClass():Class
		{
			return _viewClazz;
		}

		public function toView(viewClazz:Class):IGuardsAndHooksMapBinding
		{
			const fqcn:String = _reflector.getFQCN(viewClazz);
			_viewFCQNMap[fqcn] = this;
			_viewClazz = viewClazz;
			
			return this;
		}
		
		public function toMatcher(typeMatcher:ITypeMatcher):IGuardsAndHooksMapBinding
		{
			_typeFilter = typeMatcher.createTypeFilter();
			_typeFilterMap[_typeFilter] = this;
			return this;
		}
	}
}