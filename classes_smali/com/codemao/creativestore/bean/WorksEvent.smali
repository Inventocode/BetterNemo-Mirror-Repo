.class public Lcom/codemao/creativestore/bean/WorksEvent;
.super Ljava/lang/Object;
.source "WorksEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final WORK_TYPE_LESSON:I = 0x3

.field public static final WORK_TYPE_MODULE:I = 0x2

.field public static final WORK_TYPE_NEW:I = 0x0

.field public static final WORK_TYPE_NORMAL:I = 0x1


# instance fields
.field public assistorId:Ljava/lang/String;

.field public bcmUrl:Ljava/lang/String;

.field public desDirPath:Ljava/lang/String;

.field public havePublishStatus:Z

.field public havePublished:Z

.field private isLandscapeStage:Z

.field public isLesson:Z

.field public isLogin:Z

.field public isOpenAssistMode:Z

.field public keyFrameUrl:Ljava/lang/String;

.field public lessonId:J

.field public materialsUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public needShowDot:Z

.field public progress:I

.field public seekHelperUid:Ljava/lang/String;

.field public seekHelperWorkId:Ljava/lang/String;

.field public seekHelperWorkUid:Ljava/lang/String;

.field public srcPath:Ljava/lang/String;

.field public termId:J

.field public type:I

.field public update:Z

.field public video:Ljava/lang/String;

.field public videoDuration:I

.field public workId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 34
    iput-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage:Z

    return-void
.end method


# virtual methods
.method public getDesDirPath()Ljava/lang/String;
    .registers 2

    .line 212
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyFrameUrl()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLessonId()J
    .registers 3

    .line 164
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->lessonId:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    .line 244
    iget v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    return v0
.end method

.method public getSrcPath()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTermId()J
    .registers 3

    .line 172
    iget-wide v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->termId:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 188
    iget v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    return v0
.end method

.method public getVideo()Ljava/lang/String;
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoDuration()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    return v0
.end method

.method public getWorkId()Ljava/lang/String;
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    return-object v0
.end method

.method public getWorkUid()Ljava/lang/String;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_18

    .line 109
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_18
    move-object v0, v1

    .line 112
    :goto_19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "/"

    if-eqz v2, :cond_39

    .line 113
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2a

    return-object v1

    .line 116
    :cond_2a
    iget-object v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 118
    :cond_39
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isHavePublishStatus()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    return v0
.end method

.method public isHavePublished()Z
    .registers 2

    .line 220
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    return v0
.end method

.method public isLandscapeStage()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage:Z

    return v0
.end method

.method public isLesson()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLesson:Z

    return v0
.end method

.method public isUpdate()Z
    .registers 2

    .line 228
    iget-boolean v0, p0, Lcom/codemao/creativestore/bean/WorksEvent;->update:Z

    return v0
.end method

.method public setDesDirPath(Ljava/lang/String;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    return-void
.end method

.method public setHavePublishStatus(Z)V
    .registers 2

    .line 184
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    return-void
.end method

.method public setHavePublished(Z)V
    .registers 2

    .line 224
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    return-void
.end method

.method public setKeyFrameUrl(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    return-void
.end method

.method public setLandscapeStage(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage:Z

    return-void
.end method

.method public setLesson(Z)V
    .registers 2

    .line 160
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLesson:Z

    return-void
.end method

.method public setLessonId(J)V
    .registers 3

    .line 168
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->lessonId:J

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 200
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 248
    iput p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .registers 2

    .line 208
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    return-void
.end method

.method public setTermId(J)V
    .registers 3

    .line 176
    iput-wide p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->termId:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 192
    iput p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    return-void
.end method

.method public setUpdate(Z)V
    .registers 2

    .line 232
    iput-boolean p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->update:Z

    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .registers 2

    .line 240
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    return-void
.end method

.method public setVideoDuration(I)V
    .registers 2

    .line 152
    iput p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    return-void
.end method

.method public setWorkId(Ljava/lang/String;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    return-void
.end method

.method public toCreateData()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;
    .registers 5

    .line 122
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->bcmUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcmVersion:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 128
    iget-object v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    const-string v2, ".bcm"

    const-string v3, ".cover"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    :cond_2f
    const-string v1, "https://static.codemao.cn/nemo/ryNZDzhiE.cover"

    .line 131
    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishPreview:Ljava/lang/String;

    .line 133
    iget-boolean v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    if-eqz v1, :cond_39

    const/4 v1, 0x2

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    .line 134
    iget-boolean v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    iput-boolean v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorksEvent{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", workId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", srcPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", desDirPath=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->desDirPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", havePublished="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublished:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", update="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->update:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", video=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->video:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", keyFrameUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->keyFrameUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", progress="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", videoDuration="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->videoDuration:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", havePublishStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLesson="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLesson:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", lessonId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->lessonId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", termId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->termId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isLogin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLogin:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", bcmUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->bcmUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isOpenAssistMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isOpenAssistMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", needShowDot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->needShowDot:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", seekHelperUid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seekHelperWorkId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", seekHelperWorkUid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkUid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", assistorId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->assistorId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", materialsUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/creativestore/bean/WorksEvent;->materialsUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isLandscapeStage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
