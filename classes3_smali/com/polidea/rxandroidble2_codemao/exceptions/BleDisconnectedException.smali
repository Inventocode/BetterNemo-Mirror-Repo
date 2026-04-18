.class public Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;
.super Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
.source "BleDisconnectedException.java"


# instance fields
.field public final bluetoothDeviceAddress:Ljava/lang/String;

.field public final state:I


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, ""

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, v0, v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 69
    invoke-static {p1, p2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->createMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 70
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 71
    iput p2, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->state:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;I)V
    .registers 5

    .line 62
    invoke-static {p2, p3}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->createMessage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->bluetoothDeviceAddress:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;->state:I

    return-void
.end method

.method public static adapterDisabled(Ljava/lang/String;)Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;
    .registers 4

    .line 30
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;

    new-instance v1, Lcom/polidea/rxandroidble2_codemao/exceptions/BleAdapterDisabledException;

    invoke-direct {v1}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleAdapterDisabledException;-><init>()V

    const/4 v2, -0x1

    invoke-direct {v0, v1, p0, v2}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleDisconnectedException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;I)V

    return-object v0
.end method

.method private static createMessage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 75
    invoke-static {p1}, Lcom/polidea/rxandroidble2_codemao/utils/GattStatusParser;->getGattCallbackStatusDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->commonMacMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " with status "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
