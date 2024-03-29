#include "ccrun.h"
#include "ccrut.h"

string ext;

string gf = "c:\\apg\\app\\bin\\gf.exe pack ";

void cmain_do()
{
    auto ents = fsut::readdir();

    if ( args.size() > 0 ) ext = args[0];

    if ( ext.empty() )
    {
        for ( auto e : ents.dirs().names() )
            sys(gf + e);
    }

    else
        for ( auto e : ents.files().names() )
            if ( ol::endsWith(e, ext) )
                sys(gf + e);
}

void cmain()
{
    if ( args.empty() )
    {
        cout << "packall packs dirs or files in the current directory\n";
        cout << "use: packall do - to pack only dirs\n";
        cout << "use: packall do .ext - to pack only files with extension '.ext'\n";
        return;
    }

    if ( args[0] != "do" ) throw "use do";
    args.erase(args.begin());
    cmain_do();
}
