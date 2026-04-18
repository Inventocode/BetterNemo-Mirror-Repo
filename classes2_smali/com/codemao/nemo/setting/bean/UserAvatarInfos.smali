.class public final Lcom/codemao/nemo/setting/bean/UserAvatarInfos;
.super Ljava/lang/Object;
.source "UserAvatarInfos.kt"


# instance fields
.field private final achievement_avatar_frames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "achievement_avatar_frames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final activity_avatar_frames:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "activity_avatar_frames"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final level_avatar_frame_outbound:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "level_avatar_frame_outbound"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->activity_avatar_frames:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->activity_avatar_frames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->achievement_avatar_frames:Ljava/util/List;

    iget-object v3, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->achievement_avatar_frames:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->level_avatar_frame_outbound:Ljava/util/List;

    iget-object p1, p1, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->level_avatar_frame_outbound:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2d

    return v2

    :cond_2d
    return v0
.end method

.method public final getAchievement_avatar_frames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->achievement_avatar_frames:Ljava/util/List;

    return-object v0
.end method

.method public final getActivity_avatar_frames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->activity_avatar_frames:Ljava/util/List;

    return-object v0
.end method

.method public final getLevel_avatar_frame_outbound()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/setting/bean/UserAvatarInfoBean;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->level_avatar_frame_outbound:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->activity_avatar_frames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->achievement_avatar_frames:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->level_avatar_frame_outbound:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserAvatarInfos(activity_avatar_frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->activity_avatar_frames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", achievement_avatar_frames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->achievement_avatar_frames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", level_avatar_frame_outbound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/nemo/setting/bean/UserAvatarInfos;->level_avatar_frame_outbound:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
