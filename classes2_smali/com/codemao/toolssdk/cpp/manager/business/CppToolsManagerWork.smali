.class public abstract Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerWork;
.super Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerNewWorkModel;
.source "CppToolsManagerWork.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerNewWorkModel;-><init>()V

    return-void
.end method


# virtual methods
.method public enableVirtualKeyBoardBtn(Z)V
    .registers 4

    .line 215
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->enableVirtualKeyBoardBtn(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Z)V

    return-void
.end method

.method public openHistoryBackupDialog(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 271
    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->openHistoryBackupDialog(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V

    :cond_b
    return-void
.end method

.method public resetPlayer()V
    .registers 3

    .line 211
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->resetPlayer(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    return-void
.end method

.method public saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 5
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

    .line 32
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewWork;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_18
    return-void
.end method

.method public setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 289
    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V

    :cond_e
    return-void
.end method

.method public setBindPhoneResult(Z)V
    .registers 3

    .line 300
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 301
    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->setBindPhoneResult(Z)V

    :cond_9
    return-void
.end method

.method public setPlayer(ZZ)V
    .registers 6

    .line 196
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;

    .line 197
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    .line 198
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/SetPlayerUIOption;

    invoke-direct {v2, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/SetPlayerUIOption;-><init>(ZZ)V

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->setPlayerUI(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/model/dsbridge/SetPlayerUIOption;)V

    return-void
.end method

.method public showBackPackPage(Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 258
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 259
    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-virtual {v1, v0, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->showBackPackPage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V

    :cond_b
    return-void
.end method

.method public startWork(Z)V
    .registers 3

    .line 205
    sget-object p1, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;

    .line 206
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    .line 205
    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->startWork(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    return-void
.end method
