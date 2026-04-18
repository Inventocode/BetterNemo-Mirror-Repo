.class public final Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;
.super Ljava/lang/Object;
.source "SelectDrawToolsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel$Companion;
    }
.end annotation


# instance fields
.field private final color:Ljava/lang/Integer;

.field private final imageRes:Ljava/lang/Integer;

.field private select:Z

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;Z)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->type:I

    .line 78
    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->color:Ljava/lang/Integer;

    .line 79
    iput-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->imageRes:Ljava/lang/Integer;

    .line 80
    iput-boolean p4, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Integer;Ljava/lang/Integer;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_6

    move-object p2, v0

    :cond_6
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_b

    move-object p3, v0

    :cond_b
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_10

    const/4 p4, 0x0

    .line 76
    :cond_10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;-><init>(ILjava/lang/Integer;Ljava/lang/Integer;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->type:I

    iget v3, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->type:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->color:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->color:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->imageRes:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->imageRes:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_29

    return v2

    :cond_29
    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    iget-boolean p1, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    if-eq v1, p1, :cond_30

    return v2

    :cond_30
    return v0
.end method

.method public final getColor()Ljava/lang/Integer;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getImageRes()Ljava/lang/Integer;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->imageRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSelect()Z
    .registers 2

    .line 80
    iget-boolean v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    return v0
.end method

.method public final getType()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->type:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->color:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->imageRes:Ljava/lang/Integer;

    if-nez v1, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    if-eqz v1, :cond_23

    const/4 v1, 0x1

    :cond_23
    add-int/2addr v0, v1

    return v0
.end method

.method public final setSelect(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SelectDrawToolsModel(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->color:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->imageRes:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
