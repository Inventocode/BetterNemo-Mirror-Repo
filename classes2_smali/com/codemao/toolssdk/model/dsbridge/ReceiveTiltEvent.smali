.class public final Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;
.super Ljava/lang/Object;
.source "ReceiveTiltEvent.kt"


# instance fields
.field private final x:F

.field private final y:F

.field private final z:F


# direct methods
.method public constructor <init>(FFF)V
    .registers 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    iput p3, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;FFFILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;
    .registers 6

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    :cond_6
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    :cond_c
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    iget p3, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->copy(FFF)Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    return v0
.end method

.method public final component2()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    return v0
.end method

.method public final component3()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    return v0
.end method

.method public final copy(FFF)Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;
    .registers 5

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;-><init>(FFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getX()F
    .registers 2

    .line 3
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    return v0
.end method

.method public final getY()F
    .registers 2

    .line 3
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    return v0
.end method

.method public final getZ()F
    .registers 2

    .line 3
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveTiltEvent(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", z="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/ReceiveTiltEvent;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
