.class Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2$1;
.super Ljava/lang/Object;
.source "ScanSettingsEmulator.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
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
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/ObservableSource<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2$1;->this$1:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lio/reactivex/ObservableSource<",
            "*>;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2$1;->this$1:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;

    iget-wide v1, v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;->val$delayToNextWindow:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2;->this$0:Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;

    iget-object v0, v0, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator;->scheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v1, v2, v3, v0}, Lio/reactivex/Observable;->delay(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

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

    .line 113
    check-cast p1, Lio/reactivex/Observable;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/scan/ScanSettingsEmulator$2$1;->apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
