.class public interface abstract Lcom/codemao/toolssdk/cpp/manager/business/interfaces/IAIToolsManagerInner;
.super Ljava/lang/Object;
.source "IAIToolsManagerInner.kt"


# virtual methods
.method public abstract sendAICommonEvent(Ljava/lang/Object;)V
.end method

.method public abstract startAISystemAsk()V
.end method

.method public abstract startPlayerStream(Z)V
.end method

.method public abstract startRecordStream(Ljava/lang/Long;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startSocketConnect(Lkotlin/jvm/functions/Function3;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopPlayerStream()V
.end method

.method public abstract stopRecordStream(Z)V
.end method

.method public abstract stopSocketConnect(Z)V
.end method
