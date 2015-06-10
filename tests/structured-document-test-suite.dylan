module: structured-document-test-suite
synopsis: Test suite for the structured-document library.

define test basic-construction-test ()
  assert-no-errors(
    begin
      let e1 = make(<element>, tag: "h1",
                    content: "test");
      let e2 = make(<element>, tag: "div",
                    content: e1);
      let e3 = make(<element>, tag: "body",
                    content: elements(e2));
    end,
    "basic construction signals no errors");
end test;

define suite structured-document-test-suite ()
  test basic-construction-test;
end suite;
