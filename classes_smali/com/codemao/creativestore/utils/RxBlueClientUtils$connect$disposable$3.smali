.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->connect(Lcom/codemao/creativestore/jsbridge/bean/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $errorCallback:Lkotlin/jvm/functions/Function1;

.field final synthetic $function1:Lkotlin/jvm/functions/Function1;

.field final synthetic $isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->$function1:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->$errorCallback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->accept(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final accept(Ljava/lang/Throwable;)V
    .registers 4

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->$isCalledFunction1:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_16

    .line 165
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->$function1:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_16
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$3;->$errorCallback:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
