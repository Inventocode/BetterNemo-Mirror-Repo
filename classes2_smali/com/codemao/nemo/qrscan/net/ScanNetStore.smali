.class public final Lcom/codemao/nemo/qrscan/net/ScanNetStore;
.super Lcom/codemao/nemo/http/NetUtils;
.source "ScanNetStore.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CheckResult"
    }
.end annotation


# instance fields
.field private final activity:Lcom/giu/xzz/BaseActivity;

.field private final mScanApiService$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/codemao/nemo/qrscan/net/ScanNetStore;-><init>(Lcom/giu/xzz/BaseActivity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/giu/xzz/BaseActivity;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/codemao/nemo/http/NetUtils;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/net/ScanNetStore;->activity:Lcom/giu/xzz/BaseActivity;

    .line 21
    sget-object p1, Lcom/codemao/nemo/qrscan/net/ScanNetStore$mScanApiService$2;->INSTANCE:Lcom/codemao/nemo/qrscan/net/ScanNetStore$mScanApiService$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/qrscan/net/ScanNetStore;->mScanApiService$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/giu/xzz/BaseActivity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 19
    :cond_5
    invoke-direct {p0, p1}, Lcom/codemao/nemo/qrscan/net/ScanNetStore;-><init>(Lcom/giu/xzz/BaseActivity;)V

    return-void
.end method

.method private final getMScanApiService()Lcom/codemao/nemo/qrscan/net/api/ScanApiService;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/net/ScanNetStore;->mScanApiService$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/qrscan/net/api/ScanApiService;

    return-object v0
.end method


# virtual methods
.method public final checkOtherUrl(Ljava/lang/String;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lretrofit2/Response<",
            "Lcom/codemao/nemo/qrscan/bean/WhiteLinkResponse;",
            ">;>;"
        }
    .end annotation

    const-string v0, "otherUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "target_url"

    .line 30
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Lcom/codemao/nemo/qrscan/net/ScanNetStore;->getMScanApiService()Lcom/codemao/nemo/qrscan/net/api/ScanApiService;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/codemao/nemo/qrscan/net/api/ScanApiService;->checkUrl(Ljava/util/Map;)Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/qrscan/net/ScanNetStore;->activity:Lcom/giu/xzz/BaseActivity;

    if-eqz v0, :cond_23

    .line 34
    invoke-virtual {v0}, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    .line 37
    :cond_23
    sget-object v0, Lcom/codemao/nemo/retrofit/RetrofitTools;->INSTANCE:Lcom/codemao/nemo/retrofit/RetrofitTools;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/retrofit/RetrofitTools;->sub(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
