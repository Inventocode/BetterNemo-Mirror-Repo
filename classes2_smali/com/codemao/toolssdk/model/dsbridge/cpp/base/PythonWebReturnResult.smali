.class public Lcom/codemao/toolssdk/model/dsbridge/cpp/base/PythonWebReturnResult;
.super Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBridge;
.source "PythonWebReturnResult.kt"


# instance fields
.field private saveToServer:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 3
    invoke-direct {p0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBridge;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/PythonWebReturnResult;->saveToServer:Z

    return-void
.end method


# virtual methods
.method public final getSaveToServer()Z
    .registers 2

    .line 12
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/PythonWebReturnResult;->saveToServer:Z

    return v0
.end method

.method public final setSaveToServer(Z)V
    .registers 2

    .line 8
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/PythonWebReturnResult;->saveToServer:Z

    return-void
.end method
