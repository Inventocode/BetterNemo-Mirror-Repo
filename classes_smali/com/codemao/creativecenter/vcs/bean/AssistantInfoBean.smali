.class public final Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;
.super Ljava/lang/Object;
.source "AssistantInfoBean.kt"


# instance fields
.field private final bcmVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bcm_version"
    .end annotation
.end field

.field private hasUpdate:Z

.field private final headUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "head_url"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private isSelected:Z

.field private final token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field

.field private final updateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "update_time"
    .end annotation
.end field

.field private final uploadVersion:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "upload_version"
    .end annotation
.end field

.field private final userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "user_name"
    .end annotation
.end field

.field private final workUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_url"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    if-eq p0, p1, :cond_61

    instance-of v0, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    if-eqz v0, :cond_5f

    check-cast p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->bcmVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->bcmVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->headUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->headUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->updateTime:J

    iget-wide v2, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->updateTime:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_5f

    iget v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->uploadVersion:I

    iget v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->uploadVersion:I

    if-ne v0, v1, :cond_5f

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->userName:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->userName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->workUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->workUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->token:Ljava/lang/String;

    iget-object v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->token:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected:Z

    iget-boolean v1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected:Z

    if-ne v0, v1, :cond_5f

    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->hasUpdate:Z

    iget-boolean p1, p1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->hasUpdate:Z

    if-ne v0, p1, :cond_5f

    goto :goto_61

    :cond_5f
    const/4 p1, 0x0

    return p1

    :cond_61
    :goto_61
    const/4 p1, 0x1

    return p1
.end method

.method public final getBcmVersion()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->bcmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getHasUpdate()Z
    .registers 2

    .line 28
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->hasUpdate:Z

    return v0
.end method

.method public final getHeadUrl()Ljava/lang/String;
    .registers 2

    .line 14
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->headUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .line 16
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpdateTime()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->updateTime:J

    return-wide v0
.end method

.method public final getUploadVersion()I
    .registers 2

    .line 20
    iget v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->uploadVersion:I

    return v0
.end method

.method public final getUserName()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public final getWorkUrl()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->workUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->bcmVersion:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->headUrl:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->id:Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_24

    :cond_23
    const/4 v2, 0x0

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->updateTime:J

    invoke-static {v2, v3}, Lcom/codemao/creativecenter/vcs/bean/ApplyWorkBean$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->uploadVersion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->userName:Ljava/lang/String;

    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3f

    :cond_3e
    const/4 v2, 0x0

    :goto_3f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->workUrl:Ljava/lang/String;

    if-eqz v2, :cond_4b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->token:Ljava/lang/String;

    if-eqz v2, :cond_57

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_57
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_60

    const/4 v1, 0x1

    :cond_60
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->hasUpdate:Z

    if-eqz v1, :cond_68

    goto :goto_69

    :cond_68
    move v2, v1

    :goto_69
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSelected()Z
    .registers 2

    .line 27
    iget-boolean v0, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected:Z

    return v0
.end method

.method public final setHasUpdate(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->hasUpdate:Z

    return-void
.end method

.method public final setSelected(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected:Z

    return-void
.end method

.method public final toAssistorVersionBean()Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;
    .registers 4

    .line 32
    new-instance v0, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->id:Ljava/lang/String;

    iget v2, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->uploadVersion:I

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/vcs/bean/AssistorVersionBean;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AssistantInfoBean(bcmVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->bcmVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->headUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->updateTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", uploadVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->uploadVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", workUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->workUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->hasUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
