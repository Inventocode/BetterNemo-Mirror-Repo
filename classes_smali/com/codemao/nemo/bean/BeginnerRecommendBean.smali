.class public Lcom/codemao/nemo/bean/BeginnerRecommendBean;
.super Ljava/lang/Object;
.source "BeginnerRecommendBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authorAvatarUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_avatar_url"
    .end annotation
.end field

.field private authorDescribe:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_describe"
    .end annotation
.end field

.field private authorFansCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_fans_count"
    .end annotation
.end field

.field private authorNickname:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "author_nickname"
    .end annotation
.end field

.field private bcmVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "bcm_version"
    .end annotation
.end field

.field private courseGifUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "course_gif_url"
    .end annotation
.end field

.field private courseVideoPreviewUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "course_video_preview_url"
    .end annotation
.end field

.field private courseVideoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "course_video_url"
    .end annotation
.end field

.field private creationToastUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creation_toast_url"
    .end annotation
.end field

.field private demoWorkUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "demo_work_url"
    .end annotation
.end field

.field private demo_bcm_version:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "demo_bcm_version"
    .end annotation
.end field

.field private insetJson:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "creation_inset_json"
    .end annotation
.end field

.field private labelList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private playerUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "player_url"
    .end annotation
.end field

.field private workId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_id"
    .end annotation
.end field

.field private workLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_label"
    .end annotation
.end field

.field private workLikedCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_liked_count"
    .end annotation
.end field

.field private workName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_name"
    .end annotation
.end field

.field private workPreviewUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_preview_url"
    .end annotation
.end field

.field private workUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_url"
    .end annotation
.end field

.field private workVideoUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "work_video_url"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthorAvatarUrl()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorDescribe()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorDescribe:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorFansCount()J
    .registers 3

    .line 205
    iget-wide v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorFansCount:J

    return-wide v0
.end method

.method public getAuthorNickname()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorNickname:Ljava/lang/String;

    return-object v0
.end method

.method public getBcmVersion()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->bcmVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseGifUrl()Ljava/lang/String;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->courseGifUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseVideoPreviewUrl()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->courseVideoPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCourseVideoUrl()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->courseVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationToastUrl()Ljava/lang/String;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->creationToastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDemoWorkUrl()Ljava/lang/String;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->demoWorkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDemo_bcm_version()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->demo_bcm_version:Ljava/lang/String;

    return-object v0
.end method

.method public getInsetJson()Ljava/lang/String;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->insetJson:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->labelList:Ljava/util/List;

    return-object v0
.end method

.method public getPlayerUrl()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->playerUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkId()J
    .registers 3

    .line 117
    iget-wide v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workId:J

    return-wide v0
.end method

.method public getWorkLabel()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkLikedCount()J
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workLikedCount:J

    return-wide v0
.end method

.method public getWorkName()Ljava/lang/String;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workName:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkPreviewUrl()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workPreviewUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkUrl()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkVideoUrl()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workVideoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorAvatarUrl(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setAuthorDescribe(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorDescribe:Ljava/lang/String;

    return-void
.end method

.method public setAuthorFansCount(J)V
    .registers 3

    .line 209
    iput-wide p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorFansCount:J

    return-void
.end method

.method public setAuthorNickname(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->authorNickname:Ljava/lang/String;

    return-void
.end method

.method public setBcmVersion(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->bcmVersion:Ljava/lang/String;

    return-void
.end method

.method public setCourseGifUrl(Ljava/lang/String;)V
    .registers 2

    .line 225
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->courseGifUrl:Ljava/lang/String;

    return-void
.end method

.method public setCourseVideoPreviewUrl(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->courseVideoPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setCourseVideoUrl(Ljava/lang/String;)V
    .registers 2

    .line 89
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->courseVideoUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreationToastUrl(Ljava/lang/String;)V
    .registers 2

    .line 97
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->creationToastUrl:Ljava/lang/String;

    return-void
.end method

.method public setDemoWorkUrl(Ljava/lang/String;)V
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->demoWorkUrl:Ljava/lang/String;

    return-void
.end method

.method public setDemo_bcm_version(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->demo_bcm_version:Ljava/lang/String;

    return-void
.end method

.method public setInsetJson(Ljava/lang/String;)V
    .registers 2

    .line 105
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->insetJson:Ljava/lang/String;

    return-void
.end method

.method public setLabelList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 217
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->labelList:Ljava/util/List;

    return-void
.end method

.method public setPlayerUrl(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->playerUrl:Ljava/lang/String;

    return-void
.end method

.method public setWorkId(J)V
    .registers 3

    .line 121
    iput-wide p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workId:J

    return-void
.end method

.method public setWorkLabel(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workLabel:Ljava/lang/String;

    return-void
.end method

.method public setWorkLikedCount(J)V
    .registers 3

    .line 201
    iput-wide p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workLikedCount:J

    return-void
.end method

.method public setWorkName(Ljava/lang/String;)V
    .registers 2

    .line 129
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workName:Ljava/lang/String;

    return-void
.end method

.method public setWorkPreviewUrl(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workPreviewUrl:Ljava/lang/String;

    return-void
.end method

.method public setWorkUrl(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workUrl:Ljava/lang/String;

    return-void
.end method

.method public setWorkVideoUrl(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->workVideoUrl:Ljava/lang/String;

    return-void
.end method
