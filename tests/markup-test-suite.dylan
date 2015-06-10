module: markup-test-suite
synopsis: Test suite for the markup library.

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

define element-tag h1;
define html5 element-tag article;
define html5 element-tag section;
define element-tag div;

define test element-tag-definer-test ()
  assert-no-errors(
    begin
      let e1 = h1("Title");
      let e2 = article(section("Lorem ipsum"));
      let e3 = div(elements(e1, e2));
    end,
    "can define element-tags");
end test;

define suite markup-test-suite ()
  test basic-construction-test;
  test element-tag-definer-test;
end suite;
