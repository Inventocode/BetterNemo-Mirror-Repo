.class public final synthetic Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;

    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/RxBleClientImpl;->$r8$lambda$Ub4tG59uMvSg5Bjuz44XvUp2iVY(Lcom/polidea/rxandroidble2_codemao/RxBleAdapterStateObservable$BleAdapterState;)Lio/reactivex/MaybeSource;

    move-result-object p1

    return-object p1
.end method
