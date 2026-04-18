.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $errorCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $function1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic $isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/functions/Function1<",
            "-[",
            "Ljava/lang/String;",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$function1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$errorCallback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 241
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .registers 7

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "连接报错:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "流程-蓝牙"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 265
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    const/4 v1, 0x0

    if-eqz v0, :cond_31

    .line 266
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean p1, p1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_30

    .line 267
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$function1:Lkotlin/jvm/functions/Function1;

    new-array v0, v1, [Ljava/lang/String;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_30
    return-void

    .line 272
    :cond_31
    instance-of v0, p1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    if-eqz v0, :cond_48

    .line 273
    move-object v0, p1

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    iget v0, v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->state:I

    .line 274
    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$errorCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 276
    sget-object v3, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;

    const-string v4, "断电或者信号消失"

    invoke-virtual {v3, v4}, Lcom/codemao/toolssdk/func/logevent/BleLogEventUtils;->disconnect(Ljava/lang/String;)V

    goto :goto_4a

    :cond_48
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 278
    :goto_4a
    iget-object v3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    const/16 v4, 0x85

    if-nez v3, :cond_61

    if-eqz v0, :cond_61

    if-eq v0, v4, :cond_61

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_61

    .line 279
    iget-object v3, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$function1:Lkotlin/jvm/functions/Function1;

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v3, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    if-eqz v0, :cond_6c

    if-eq v0, v4, :cond_6c

    if-nez v2, :cond_6c

    .line 282
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$3;->$errorCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6c
    return-void
.end method
