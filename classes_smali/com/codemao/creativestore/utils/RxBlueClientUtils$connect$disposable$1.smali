.class final Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;
.super Ljava/lang/Object;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lio/reactivex/functions/Function;


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


# static fields
.field public static final INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;

    invoke-direct {v0}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;-><init>()V

    sput-object v0, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;->INSTANCE:Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Single;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/RxBleConnection;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->discoverServices()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 29
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/creativestore/utils/RxBlueClientUtils$connect$disposable$1;->apply(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method
