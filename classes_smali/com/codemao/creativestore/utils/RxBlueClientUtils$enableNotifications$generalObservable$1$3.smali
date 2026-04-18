.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$3;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
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
        "[B>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$3;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .registers 2

    .line 29
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$3;->accept([B)V

    return-void
.end method

.method public final accept([B)V
    .registers 4

    .line 262
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$3;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;

    iget-object v0, v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->$callback:Lkotlin/jvm/functions/Function1;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
