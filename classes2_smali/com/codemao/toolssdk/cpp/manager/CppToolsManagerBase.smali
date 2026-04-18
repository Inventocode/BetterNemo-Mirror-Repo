.class public abstract Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerBase;
.super Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;
.source "CppToolsManagerBase.kt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;-><init>()V

    return-void
.end method


# virtual methods
.method public applicationPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->applicationPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_13
    return-void
.end method

.method public getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;
    .registers 4

    .line 23
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取AudioPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSAudio(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->Companion:Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer$Companion;->getInstance(Ljava/lang/String;)Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    return-object v0
.end method

.method public launchActivity(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/activity/result/ActivityResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerRegisterActivity;->launch(Landroid/content/Intent;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
