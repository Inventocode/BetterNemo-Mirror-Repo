.class public abstract Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;
.super Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;
.source "CppWebViewWork.kt"


# instance fields
.field private isSucceed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public abstract synthetic getAgentCacheDir()Ljava/lang/String;
.end method

.method public abstract synthetic getEnterFrom()Ljava/lang/String;
.end method

.method public abstract synthetic getHeaderToken()Ljava/lang/String;
.end method

.method public abstract synthetic getToolType()Ljava/lang/String;
.end method

.method public abstract synthetic getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public abstract synthetic getWorkTypeAndEnterFrom()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isLoadSucceed()Z
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->isSucceed:Z

    return v0
.end method

.method public saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "workName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 52
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getApplication()Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_2b

    new-instance v7, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;

    move-object v1, v7

    move-object v2, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork$saveWork$1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v0, p1, v7}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    :cond_2b
    return-void
.end method

.method public abstract synthetic setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
.end method

.method public abstract synthetic setBindPhoneResult(Z)V
.end method

.method public abstract synthetic setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public setLoadSucceed(Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewWork;->isSucceed:Z

    return-void
.end method

.method public abstract synthetic setLoginResult(Z)V
.end method

.method public abstract synthetic setPythonCapture(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic setStateButtonsListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
.end method

.method public abstract synthetic setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
