.class public final Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;
.super Ljava/lang/Object;
.source "UserAvatarInfoBean.kt"

# interfaces
.implements Lcom/codemao/nemo/setting/adapter/ItemTypeAdapter;


# instance fields
.field private final activityUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activity_url"
    .end annotation
.end field

.field private final currentUsed:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_used"
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private final hasOwned:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "has_owned"
    .end annotation
.end field

.field private final headFrameName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head_frame_name"
    .end annotation
.end field

.field private final headFrameUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head_frame_url"
    .end annotation
.end field

.field private final id:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isSelected:Z

.field private final smallHeadFrameUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "small_head_frame_url"
    .end annotation
.end field

.field private final type:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;

    iget-boolean v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->currentUsed:Z

    iget-boolean v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->currentUsed:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-boolean v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->hasOwned:Z

    iget-boolean v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->hasOwned:Z

    if-eq v1, v3, :cond_25

    return v2

    :cond_25
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameName:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    return v2

    :cond_30
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    return v2

    :cond_3b
    iget-wide v3, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->id:J

    iget-wide v5, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->id:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_44

    return v2

    :cond_44
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->smallHeadFrameUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->smallHeadFrameUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v2

    :cond_4f
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->activityUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->activityUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v2

    :cond_5a
    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->type:I

    iget v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->type:I

    if-eq v1, v3, :cond_61

    return v2

    :cond_61
    iget-boolean v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected:Z

    iget-boolean p1, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected:Z

    if-eq v1, p1, :cond_68

    return v2

    :cond_68
    return v0
.end method

.method public final getActivityUrl()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->activityUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentUsed()Z
    .registers 2

    .line 14
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->currentUsed:Z

    return v0
.end method

.method public final getHasOwned()Z
    .registers 2

    .line 18
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->hasOwned:Z

    return v0
.end method

.method public final getHeadFrameName()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadFrameUrl()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .registers 3

    .line 24
    iget-wide v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->id:J

    return-wide v0
.end method

.method public getItemType()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getType()I
    .registers 2

    .line 30
    iget v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->type:I

    return v0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->currentUsed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->hasOwned:Z

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :cond_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->id:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->smallHeadFrameUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->activityUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->type:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected:Z

    if-eqz v2, :cond_50

    goto :goto_51

    :cond_50
    move v1, v2

    :goto_51
    add-int/2addr v0, v1

    return v0
.end method

.method public final isSelected()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected:Z

    return v0
.end method

.method public final setSelected(Z)V
    .registers 2

    .line 32
    iput-boolean p1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAvatarInfoBean(currentUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->currentUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasOwned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->hasOwned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headFrameName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headFrameUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->headFrameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", smallHeadFrameUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->smallHeadFrameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->activityUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
