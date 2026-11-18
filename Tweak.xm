#import <Foundation/Foundation.h>

// Diagnostic starter only: observe process startup without changing store behavior.
%ctor {
    @autoreleasepool {
        NSLog(@"[StoreDiagnostics] Started in %@ (diagnostic-only; no store changes)",
              [[NSProcessInfo processInfo] processName]);
    }
}