.First.lib <-
function(lib, pkg)
{
    library.dynam("mgarchBEKK", pkg, lib)
    mylib <- dirname(.path.package("mgarchBEKK"))
    ver <- utils::packageDescription("mgarchBEKK", lib = mylib)["Version"]
    vertxt <- paste("\n\t`mgarchBEKK' version:", ver, "\n")
    introtxt <-
        paste("\n\t`mgarchBEKK' is a package that implements a BEKK(p,q) model\n",
              "\t See `library (help=mgarchBEKK)' for details.\n\n",
              sep = "")
    if(interactive() || getOption("verbose"))
        cat(paste(vertxt, introtxt))
}
