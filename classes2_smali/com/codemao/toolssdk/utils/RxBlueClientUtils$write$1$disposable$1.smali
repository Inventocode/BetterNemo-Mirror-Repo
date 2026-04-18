.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->write(Lcom/codemao/toolssdk/model/dsbridge/WriteData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V
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
.field final synthetic $uuid:Ljava/util/UUID;

.field final synthetic $writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;


# direct methods
.method public static synthetic $r8$lambda$VtW5UQahN-4FN2Df-geZ9JGjFA4(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$tvPTtILUYO36ZTpxy7NN8hofAxY(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Ljava/util/UUID;Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->$uuid:Ljava/util/UUID;

    iput-object p2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothGattCharacteristic;

    return-object p0
.end method

.method private static final invoke$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Lio/reactivex/SingleSource;
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/SingleSource;

    return-object p0
.end method


# virtual methods
.method public final invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/SingleSource;
    .registers 5
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

    .line 307
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->$uuid:Ljava/util/UUID;

    invoke-interface {p1, v0}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->getCharacteristic(Ljava/util/UUID;)Lio/reactivex/Single;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;

    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$1;-><init>(Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V

    new-instance v2, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v2}, Lio/reactivex/Single;->map(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object v0

    .line 316
    new-instance v1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;

    iget-object v2, p0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->$writeData:Lcom/codemao/toolssdk/model/dsbridge/WriteData;

    invoke-direct {v1, p1, v2}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$2;-><init>(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;Lcom/codemao/toolssdk/model/dsbridge/WriteData;)V

    new-instance p1, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda0;

    invoke-direct {p1, v1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1}, Lio/reactivex/Single;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 306
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$write$1$disposable$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
