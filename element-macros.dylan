Module: markup
Synopsis: Macros for creating elements.
Author: Bruce Mitchener, Jr.
Copyright: See LICENSE file in this distribution.

define macro element-tag-definer
  { define element-tag ?tag-name:name }
  => {
    define inline function ?tag-name
        (content :: <element-content>)
     => (element :: <element>)
      make(<element>, tag: ?"tag-name", content: content)
    end function;
  }
  { define ?namespace:name element-tag ?tag:name }
  => {
    define inline function ?tag
        (content :: <element-content>)
     => (element :: <element>)
      make(<element>, namespace: ?"namespace",
           tag: ?"tag", content: content)
    end function;
  }
end macro;
