Module: dylan-user

define library structured-document
  use common-dylan;

  export structured-document;
end library structured-document;

define module structured-document
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
end module structured-document;
