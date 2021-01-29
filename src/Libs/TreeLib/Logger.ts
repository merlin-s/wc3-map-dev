/**
 * Very basic logger, use booleans to turn specific levels of logging on and off
 * Generally you would want Debug turned on for DEV but disabled for release.
 * And verbose on in worst case erroring.
 */
export class Logger {
    static doLogVerbose = false;
    static doLogDebug = true;
    static doLogWarning = true;
    static doLogCritical = true;

    public static LogVerbose(...params: any[]) {
        if (this.doLogVerbose) {
            print("Verbose: ", ...params);
        }
    }

    public static LogDebug(...params: any[]) {
        if (this.doLogDebug) {
            print("Debug: ", ...params);
        }
    }

    public static LogWarning(...params: any[]) {
        if (this.doLogWarning) {
            print("Warning: ", ...params);
        }
    }

    public static LogCritical(...params: any[]) {
        if (this.doLogCritical) {
            print("Critical: ", ...params);
        }
    }
}