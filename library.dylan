Module: dylan-user

define library markup
  use common-dylan;

  export markup;
end library markup;

define module markup
  use common-dylan;

  export <attribute>,
         <attributes>,
         attribute-name,
         attribute-value;

  export <element>,
         <element-content>,
         element-namespace,
         element-tag,
         element-content,
         element-attributes,
         elements;

  export element-tag-definer;

  export <document>,
         document-root;
end module markup;
