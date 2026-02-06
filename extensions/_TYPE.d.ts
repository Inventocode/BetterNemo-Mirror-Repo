interface BetterNemo {
    log: (moduleName: any, ...msgs: any[]) => void;
    error: (moduleName: any, ...msgs: any[]) => void;
    hook: any;
    getHook: (name: string) => Promise<any>;
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
    Toolbox: {
        title: (text: any) => string;
        error: (text: any) => string;
        line: (text: any, height?: number) => string;
        flyout_bottom: (width?: number, height?: number) => string;
        sep: (gap?: number) => string;
        numValue: (name: any, value: any) => string;
        textValue: (name: any, value: any) => string;
        optionValue: (name: any, value: any) => string;
        block: (type: any, ...values: any[]) => string;
        simpleEventBlock: (type: any, ...params: any[]) => string[];
    };
    regColor: (colorID: any, fill: any, border: any) => void;
    regBlocks: (blocks: any) => void;
    regSimpleEvent: (eventBlockId: string) => void;
    regMethod: (name: string, func: Function, error_msg?: string) => Promise<void>;
    addToolbox: (name: string, icon: string, color: string, blocks: string[]) => void;
    regIcon: (svg: any) => void;
    waitBlocklyLoaded: () => Promise<void>;
    waitBlockLoaded: () => Promise<void>;
    waitRunmgrLoaded: () => Promise<void>;
}