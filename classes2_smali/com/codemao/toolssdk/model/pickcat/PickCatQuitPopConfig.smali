.class public final Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;
.super Ljava/lang/Object;
.source "PickCatQuitPopConfig.kt"


# instance fields
.field private isPublished:Z

.field private showBackpack:Z

.field private showHistory:Z

.field private showPublishButton:Z


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .registers 5

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    .line 5
    iput-boolean p2, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    .line 6
    iput-boolean p3, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    .line 7
    iput-boolean p4, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    const/4 p1, 0x0

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_b

    const/4 p2, 0x0

    :cond_b
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_10

    const/4 p3, 0x0

    :cond_10
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_15

    const/4 p4, 0x0

    .line 3
    :cond_15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;-><init>(ZZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;ZZZZILjava/lang/Object;)Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-boolean p1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-boolean p2, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget-boolean p3, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-boolean p4, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->copy(ZZZZ)Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    return v0
.end method

.method public final component2()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    return v0
.end method

.method public final component3()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    return v0
.end method

.method public final component4()Z
    .registers 2

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    return v0
.end method

.method public final copy(ZZZZ)Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;
    .registers 6

    new-instance v0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;-><init>(ZZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    iget-boolean v3, p1, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    if-eq v1, p1, :cond_28

    return v2

    :cond_28
    return v0
.end method

.method public final getShowBackpack()Z
    .registers 2

    .line 6
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    return v0
.end method

.method public final getShowHistory()Z
    .registers 2

    .line 7
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    return v0
.end method

.method public final getShowPublishButton()Z
    .registers 2

    .line 4
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :cond_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    if-eqz v2, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    add-int/2addr v0, v1

    return v0
.end method

.method public final isPublished()Z
    .registers 2

    .line 5
    iget-boolean v0, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    return v0
.end method

.method public final setPublished(Z)V
    .registers 2

    .line 5
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    return-void
.end method

.method public final setShowBackpack(Z)V
    .registers 2

    .line 6
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    return-void
.end method

.method public final setShowHistory(Z)V
    .registers 2

    .line 7
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    return-void
.end method

.method public final setShowPublishButton(Z)V
    .registers 2

    .line 4
    iput-boolean p1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PickCatQuitPopConfig(showPublishButton="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showPublishButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPublished="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->isPublished:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showBackpack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showBackpack:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/model/pickcat/PickCatQuitPopConfig;->showHistory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
