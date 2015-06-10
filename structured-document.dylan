Module: structured-document
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
define constant <element-content> = type-union(<string>, <element>);
define constant <element-contents> = limited(<vector>, of: <element-content>);

define class <element> (<object>)
  constant slot element-namespace :: <string> = "",
    init-keyword: namespace:;
  constant slot element-tag :: <string>,
    required-init-keyword: tag:;
  constant slot element-content :: type-union(<element-contents>,
                                              <element-content>,
                                              singleton(#f)) = #f,
    init-keyword: content:;
  constant slot element-attributes :: false-or(<attributes>) = #f,
    init-keyword: attributes:;
end class;

define class <document> (<object>)
  constant slot document-root :: <element>,
    required-init-keyword: root:;
end class;

define inline function elements (#rest elems)
 => (contents :: <element-contents>)
  as(<element-contents>, elems);
end;
