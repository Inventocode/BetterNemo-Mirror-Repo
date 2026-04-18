.class final Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RxBlueClientUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/utils/RxBlueClientUtils;->connect(Lcom/codemao/toolssdk/model/dsbridge/ConnectData;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
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
        "+",
        "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;->INSTANCE:Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

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
            "+",
            "Lcom/polidea/rxandroidble2_codemao/RxBleDeviceServices;",
            ">;"
        }
    .end annotation

    const-string v0, "obj"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    invoke-interface {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;->discoverServices()Lio/reactivex/Single;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 240
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/RxBlueClientUtils$connect$1$disposable$1;->invoke(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;)Lio/reactivex/SingleSource;

    move-result-object p1

    return-object p1
.end method
