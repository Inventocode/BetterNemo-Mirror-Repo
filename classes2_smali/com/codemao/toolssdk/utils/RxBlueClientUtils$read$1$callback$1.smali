.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->read(Lcom/codemao/toolssdk/model/dsbridge/ReadData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic $function1:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[B*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$XBSJCBx4-Lyz4Kdq4V6PBQToX58(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zCKPifZ6wdeMCNLEwKBuJadxg0w(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;->invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;->$function1:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/SingleSource;

    return-object p0
.end method

.method private static final invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uuId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p1}, Lio/reactivex/Observable;->firstOrError()Lio/reactivex/Single;

    move-result-object p1

    .line 348
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$1;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$1;-><init>(Ljava/util/UUID;)V

    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    .line 349
    invoke-virtual {p1}, Lio/reactivex/Single;->toObservable()Lio/reactivex/Observable;

    move-result-object p1

    .line 350
    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$2;

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;->$function1:Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "function1: Function1<Byt…                        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 345
    check-cast p1, Lio/reactivex/Observable;

    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
