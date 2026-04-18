.class Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$1$2;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        ">;",
        "Lio/reactivex/Observable<",
        "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$1;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Lcom/polidea/rxandroidble2_codemao/internal/scan/RxBleInternalScanResult;",
            ">;"
        }
    .end annotation

    const-wide/16 v0, 0x1

    .line 50
    invoke-virtual {p1, v0, v1}, Lio/reactivex/Observable;->take(J)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$1$2;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
