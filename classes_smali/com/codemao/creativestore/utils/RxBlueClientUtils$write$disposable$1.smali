.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativestore/utils/RxBlueClientUtils;->write(Lcom/codemao/creativestore/jsbridge/bean/WriteData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
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
        "Lio/reactivex/SingleSource<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic $uuid:Ljava/util/UUID;

.field final synthetic $writeData:Lcom/codemao/creativestore/jsbridge/bean/WriteData;


# direct methods
.method constructor <init>(Ljava/util/UUID;Lcom/codemao/creativestore/jsbridge/bean/WriteData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->$uuid:Ljava/util/UUID;

    iput-object p2, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->$writeData:Lcom/codemao/creativestore/jsbridge/bean/WriteData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Single;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ")",
            "Lio/reactivex/Single<",
            "[B>;"
        }
    .end annotation

    const-string v0, "rxBleConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->$uuid:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$1;-><init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1$2;-><init>(Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$write$disposable$1;->apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
