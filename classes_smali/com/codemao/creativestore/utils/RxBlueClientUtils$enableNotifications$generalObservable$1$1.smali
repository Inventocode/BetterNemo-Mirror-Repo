.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $uuId:Ljava/util/UUID;

.field final synthetic this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;Ljava/util/UUID;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ")",
            "Lio/reactivex/Observable<",
            "Lio/reactivex/Observable<",
            "[B>;>;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->this$0:Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;

    iget-object v0, v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1;->$notificationsData:Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;

    invoke-virtual {v0}, Lcom/codemao/creativestore/jsbridge/bean/NotificationsData;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x239812a4

    if-eq v1, v2, :cond_2b

    const v2, 0x237a88eb

    if-eq v1, v2, :cond_1c

    goto :goto_3a

    :cond_1c
    const-string v1, "notification"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 250
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_40

    :cond_2b
    const-string v1, "indication"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 253
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->setupIndication(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    goto :goto_40

    .line 256
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->setupNotification(Ljava/util/UUID;)Lio/reactivex/Observable;

    move-result-object p1

    :goto_40
    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$enableNotifications$generalObservable$1$1;->apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
