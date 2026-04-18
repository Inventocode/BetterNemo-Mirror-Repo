.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
        "Lio/reactivex/ObservableSource<",
        "+",
        "Lio/reactivex/Observable<",
        "[B>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

.field final synthetic $uuId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;Ljava/util/UUID;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/ObservableSource;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->$notificationsData:Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/NotificationsData;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notification"

    .line 371
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 372
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_2f

    :cond_1a
    const-string v1, "indication"

    .line 375
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 376
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->setupIndication(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_2f

    .line 380
    :cond_29
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_2f
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 369
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$enableNotifications$1$generalObservable$1$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
