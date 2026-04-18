.class public Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableCheckerApi26;
.super Ljava/lang/Object;
.source "IsConnectableCheckerApi26.java"

# interfaces
.implements Lcom/polidea/rxandroidble2_codemao/internal/scan/IsConnectableChecker;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(Landroid/bluetooth/le/ScanResult;)Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;
    .registers 2

    .line 21
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->isConnectable()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    goto :goto_b

    :cond_9
    sget-object p1, Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;->NOT_CONNECTABLE:Lcom/polidea/rxandroidble2_codemao/scan/IsConnectable;

    :goto_b
    return-object p1
.end method
