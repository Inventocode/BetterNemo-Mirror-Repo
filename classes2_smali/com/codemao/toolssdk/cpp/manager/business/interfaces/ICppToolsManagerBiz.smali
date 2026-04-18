.class public interface abstract Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;
.super Ljava/lang/Object;
.source "ICppToolsManagerBiz.kt"


# virtual methods
.method public abstract closeCameraDialog(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCanRecordCall()Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCrateStartTime()Ljava/lang/Long;
.end method

.method public abstract getEnterFrom()Ljava/lang/String;
.end method

.method public abstract setCreateStartTime(Ljava/lang/Long;)V
.end method

.method public abstract setPlayerType(Lcom/codemao/toolssdk/manager/PlayerType;)V
.end method
