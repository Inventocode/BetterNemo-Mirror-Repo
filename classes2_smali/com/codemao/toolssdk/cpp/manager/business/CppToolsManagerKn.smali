.class public abstract Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerKn;
.super Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;
.source "CppToolsManagerKn.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;-><init>()V

    return-void
.end method


# virtual methods
.method public checkWorkSaveEnable(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 11
    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->checkWorkSaveEnable(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V

    :cond_b
    return-void
.end method
