.class public final synthetic Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->$r8$lambda$Z4JjDvAu8AC4hb7QE51su-Mxc-A(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Z

    move-result p1

    return p1
.end method
