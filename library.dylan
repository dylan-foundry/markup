Module: dylan-user

define library structured-document
  use common-dylan;
  use io;

  export structured-document;
end library structured-document;

define module structured-document
  use common-dylan, exclude: { format-to-string };
  use format-out;
end module structured-document;
