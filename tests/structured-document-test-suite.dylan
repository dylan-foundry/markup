module: structured-document-test-suite
synopsis: Test suite for the structured-document library.

define test example-test ()
  assert-true(#t);
end test example-test;

define suite structured-document-test-suite ()
  test example-test;
end suite;
