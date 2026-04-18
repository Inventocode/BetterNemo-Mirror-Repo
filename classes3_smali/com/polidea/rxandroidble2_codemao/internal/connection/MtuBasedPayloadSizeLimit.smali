.class Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuBasedPayloadSizeLimit;
.super Ljava/lang/Object;
.source "MtuBasedPayloadSizeLimit.java"


# instance fields
.field private final rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;


# direct methods
.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/RxBleConnection;I)V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/connection/MtuBasedPayloadSizeLimit;->rxBleConnection:Lcom/polidea/rxandroidble2_codemao/RxBleConnection;

    return-void
.end method
