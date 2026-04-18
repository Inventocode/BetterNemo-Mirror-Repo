.class public Lcom/polidea/rxandroidble2_codemao/internal/BleIllegalOperationException;
.super Ljava/lang/RuntimeException;
.source "BleIllegalOperationException.java"


# instance fields
.field public final characteristicUUID:Ljava/util/UUID;

.field public final neededProperties:I

.field public final supportedProperties:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;II)V
    .registers 5

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/BleIllegalOperationException;->characteristicUUID:Ljava/util/UUID;

    .line 24
    iput p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/BleIllegalOperationException;->supportedProperties:I

    .line 25
    iput p4, p0, Lcom/polidea/rxandroidble2_codemao/internal/BleIllegalOperationException;->neededProperties:I

    return-void
.end method
