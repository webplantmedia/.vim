/**
 * ${1:{{name}}}{{?func: vmustache#InitCounter("params", 1)}}
 *
 * @since 1.01
 *{{#parameters}}
 * @param ${{{?func: vmustache#IncrementCounter("params")}}:{{type}}{{^type}}mixed{{/type}}} ${{name}}${{{?func: vmustache#IncrementCounter("params")}}}{{/parameters}}
 * @return void
 */
