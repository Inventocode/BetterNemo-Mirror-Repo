.class public Lcom/polidea/rxandroidble2_codemao/exceptions/BleConflictingNotificationAlreadySetException;
.super Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;
.source "BleConflictingNotificationAlreadySetException.java"


# instance fields
.field private final alreadySetIsIndication:Z

.field private final characteristicUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Z)V
    .registers 5

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Characteristic "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " notification already set to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_17

    const-string v1, "indication"

    goto :goto_19

    :cond_17
    const-string v1, "notification"

    .line 20
    :goto_19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/exceptions/BleException;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleConflictingNotificationAlreadySetException;->characteristicUuid:Ljava/util/UUID;

    .line 22
    iput-boolean p2, p0, Lcom/polidea/rxandroidble2_codemao/exceptions/BleConflictingNotificationAlreadySetException;->alreadySetIsIndication:Z

    return-void
.end method
