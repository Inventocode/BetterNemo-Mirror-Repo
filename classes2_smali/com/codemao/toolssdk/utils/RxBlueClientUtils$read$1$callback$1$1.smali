.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1;->invoke(Lio/reactivex/Observable;Ljava/util/UUID;)Lio/reactivex/Observable;
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
        "Lio/reactivex/SingleSource<",
        "+[B>;>;"
    }
.end annotation


# instance fields
.field final synthetic $uuId:Ljava/util/UUID;


# direct methods
.method constructor <init>(Ljava/util/UUID;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$1;->$uuId:Ljava/util/UUID;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/SingleSource;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ")",
            "Lio/reactivex/SingleSource<",
            "+[B>;"
        }
    .end annotation

    const-string v0, "rxBleConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$1;->$uuId:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->readCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 348
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$read$1$callback$1$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
