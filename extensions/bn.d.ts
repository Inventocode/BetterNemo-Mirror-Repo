interface BetterNemo {
    log: (moduleName: any, ...msgs: any[]) => void;
    hook: any;
    getHook: (name: string) => Promise<any>;
    regColor: (colorID: any, fill: any, border: any) => Promise<void>;
    regBlocks: (blocks: any) => Promise<void>;
    Block: {
        methodBlock: {
            previousStatement: boolean;
            nextStatement: boolean;
            inputsInline: boolean;
        };
        eventBlock: {
            nextStatement: boolean;
            inputsInline: boolean;
        };
    };
    addToolbox: (name: string, icon: string, color: string, blocks: string[]) => void;
}