.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->enableNotifications(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
        ">;",
        "Ljava/util/UUID;",
        "Lio/reactivex/Observable<",
        "[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic $callback:Lkotlin/jvm/functions/Function1;

.field final synthetic $notificationsData:Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;Lkotlin/jvm/functions/Function1;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->$notificationsData:Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ">;",
            "Ljava/util/UUID;",
            ")",
            "Lio/reactivex/Observable<",
            "[B>;"
        }
    .end annotation

    const-string v0, "connectionObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;

    invoke-direct {v0, p0, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;-><init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;Ljava/util/UUID;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 260
    sget-object p2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;->INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$2;

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 261
    new-instance p2, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$3;

    invoke-direct {p2, p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$3;-><init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "connectionObservable.fla…it)\n                    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 29
    check-cast p1, Lio/reactivex/Observable;

    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
