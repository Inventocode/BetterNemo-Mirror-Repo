.class public final synthetic Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->$r8$lambda$lMDQpAm9yOh7DyNZpYs07Nbkewc(Lcom/polidea/rxandroidble2_codemao/scan/ScanResult;)V

    return-void
.end method
