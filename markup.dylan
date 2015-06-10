Module: markup
Synopsis: Basic structured document definitions.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define class <attribute> (<object>)
  constant slot attribute-name :: <string>,
    required-init-keyword: name:;
  constant slot attribute-value,
    required-init-keyword: value:;
end class;

define constant <attributes> = limited(<vector>, of: <attribute>);
define constant <single-element-content> = type-union(<string>, <element>);
define constant <element-content-vector> = limited(<vector>, of: <single-element-content>);
define constant <element-content> = type-union(<single-element-content>,
                                               <element-content-vector>);

define class <element> (<object>)
  constant slot element-namespace :: <string> = "",
    init-keyword: namespace:;
  constant slot element-tag :: <string>,
    required-init-keyword: tag:;
  constant slot element-content :: false-or(<element-content>) = #f,
    init-keyword: content:;
  constant slot element-attributes :: false-or(<attributes>) = #f,
    init-keyword: attributes:;
end class;

define class <document> (<object>)
  constant slot document-root :: <element>,
    required-init-keyword: root:;
end class;

define inline function elements (#rest elems)
 => (content :: <element-content-vector>)
  as(<element-content-vector>, elems);
end;
