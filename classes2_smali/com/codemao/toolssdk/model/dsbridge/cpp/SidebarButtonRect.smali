.class public final Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;
.super Ljava/lang/Object;
.source "SidebarButton.kt"


# instance fields
.field private final h:F

.field private final w:F

.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    iput p2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    iput p3, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    iput p4, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;FFFFILjava/lang/Object;)Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget p1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget p4, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->copy(FFFF)Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    return v0
.end method

.method public final component2()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    return v0
.end method

.method public final component3()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    return v0
.end method

.method public final component4()F
    .registers 2

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    return v0
.end method

.method public final copy(FFFF)Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;
    .registers 6

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;-><init>(FFFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    iget v3, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    iget p1, p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_38

    return v2

    :cond_38
    return v0
.end method

.method public final getH()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    return v0
.end method

.method public final getW()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    return v0
.end method

.method public final getX()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    return v0
.end method

.method public final getY()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    return v0
.end method

.method public hashCode()I
    .registers 3

    iget v0, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SidebarButtonRect(x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->w:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/model/dsbridge/cpp/SidebarButtonRect;->h:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
