.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->enableNotifications(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "[B",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;


# direct methods
.method public static synthetic $r8$lambda$EGHEY90iUqZf20MNxd5mLKIYQuM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->invoke$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SD3F-0KEI6JWH-wEiCE7SM7gmZQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ls9o00IP0-b1bQpzq7piy4YLXKM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->$callback:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/ObservableSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/ObservableSource;

    return-object p0
.end method

.method private static final invoke$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 386
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
    .registers 5
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

    .line 369
    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    invoke-direct {v0, v1, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;-><init>(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Ljava/util/UUID;)V

    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$$ExternalSyntheticLambda2;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 384
    sget-object p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$2;

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 385
    iget-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getThrottle()J

    move-result-wide v0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Lio/reactivex/Observable;->throttleFirst(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p1

    .line 386
    new-instance p2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$3;

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->$callback:Lkotlin/jvm/functions/Function1;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$3;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnNext(Lio/reactivex/functions/Consumer;)Lio/reactivex/Observable;

    move-result-object p1

    const-string p2, "notificationsData: Notif…                        }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 367
    check-cast p1, Lio/reactivex/Observable;

    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
