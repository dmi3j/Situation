# Situation
Weird case with frameworks/libraries visibilities

There is a proprietary framework *PrivateLibrary* which distributed as *.framework (written in Objective-C or even C++)

There is *MainApp* workspace which contains main iOS target and *WrapperFramework* framework written in Swift as well as main iOS target. With current set I'm able to reach *WrapperFramework* classes and that's expected.

But I don't need *PrivateLibrary* classes to be visible in main iOS target (see ViewController.swift)
