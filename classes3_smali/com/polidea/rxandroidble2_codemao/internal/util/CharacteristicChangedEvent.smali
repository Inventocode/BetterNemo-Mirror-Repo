.class public Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;
.super Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;
.source "CharacteristicChangedEvent.java"


# instance fields
.field public final data:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/lang/Integer;[B)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;-><init>(Ljava/util/UUID;Ljava/lang/Integer;)V

    .line 13
    iput-object p3, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->data:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 21
    :cond_4
    instance-of v1, p1, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_16

    .line 22
    instance-of v1, p1, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicNotificationId;

    if-eqz v1, :cond_14

    invoke-super {p0, p1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0

    .line 24
    :cond_16
    invoke-super {p0, p1}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    return v2

    .line 28
    :cond_1d
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->data:[B

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .registers 3

    .line 36
    invoke-super {p0}, Landroid/util/Pair;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 37
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CharacteristicChangedEvent{UUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    .line 44
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", instanceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/util/CharacteristicChangedEvent;->data:[B

    .line 46
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
