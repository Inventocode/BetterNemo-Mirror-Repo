.class public final Lcom/codemao/toolssdk/model/dsbridge/PointBody;
.super Ljava/lang/Object;
.source "IAddImagesOptions.kt"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/PointBody;FFILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/PointBody;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->copy(FF)Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    return v0
.end method

.method public final component2()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    return v0
.end method

.method public final copy(FF)Lcom/codemao/toolssdk/model/dsbridge/PointBody;
    .registers 4

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/PointBody;-><init>(FF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/PointBody;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getX()F
    .registers 2

    .line 53
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    return v0
.end method

.method public final getY()F
    .registers 2

    .line 53
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PointBody(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/PointBody;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
