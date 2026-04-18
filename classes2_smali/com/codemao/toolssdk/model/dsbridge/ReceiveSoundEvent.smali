.class public final Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;
.super Ljava/lang/Object;
.source "ReceiveSoundEvent.kt"


# instance fields
.field private final sound:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;DILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    iget-wide p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->copy(D)Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()D
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    return-wide v0
.end method

.method public final copy(D)Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;-><init>(D)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;

    iget-wide v3, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    iget-wide v5, p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-eqz p1, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getSound()D
    .registers 3

    .line 3
    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    return-wide v0
.end method

.method public hashCode()I
    .registers 3

    iget-wide v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent$$ExternalSyntheticBackport0;->m(D)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveSoundEvent(sound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveSoundEvent;->sound:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
