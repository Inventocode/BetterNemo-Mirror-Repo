.class public final synthetic Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;

.field public final synthetic f$1:Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

.field public final synthetic f$2:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;->f$0:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;

    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;->f$1:Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;->f$2:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;->f$0:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;->f$1:Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda3;->f$2:[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;

    invoke-static {v0, v1, v2}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->$r8$lambda$-DGwrqHFTDG16ptEucyxBz2NTjY(Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;Lcom/polidea/rxandroidble2_codemao/scan/ScanSettings;[Lcom/polidea/rxandroidble2_codemao/scan/ScanFilter;)Lio/reactivex/ObservableSource;

    move-result-object v0

    return-object v0
.end method
