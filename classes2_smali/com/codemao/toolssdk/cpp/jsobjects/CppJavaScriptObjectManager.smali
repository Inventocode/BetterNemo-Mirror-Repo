.class public Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;
.super Lcom/codemao/toolssdk/cpp/jsobjects/PythonJSObjectManager;
.source "CppJavaScriptObjectManager.kt"


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
    .registers 4

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/PythonJSObjectManager;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V

    return-void
.end method
