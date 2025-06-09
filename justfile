slides:
  typst compile slides/main.typ slides/out/slides.pdf

watch:
  typst watch slides/main.typ slides/out/slides.pdf
  
sh-test project:
    cd {{project}} && ./tests.sh
    
sh-tests: (sh-test "mycli") (sh-test "mycli_with_libs")


@verify:
    cd mycli && just verify
    cd mycli_with_libs && just verify
    just sh-tests

fmt:
    cd mycli && just fmt
    cd mycli_with_libs && just fmt