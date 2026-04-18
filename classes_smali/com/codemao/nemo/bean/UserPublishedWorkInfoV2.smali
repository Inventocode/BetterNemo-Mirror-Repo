.class public Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;
.super Ljava/lang/Object;
.source "UserPublishedWorkInfoV2.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COURSE:Ljava/lang/String; = "USER_COURSE_RECOMMEND"

.field public static final TYPE_NEW:Ljava/lang/String; = "NEW_RECOMMEND"

.field public static final TYPE_SUBJECT:Ljava/lang/String; = "SUBJECT_RECOMMEND"

.field public static final TYPE_SYSTEM:Ljava/lang/String; = "SYSTEM_RECOMMEND"


# instance fields
.field private collect_times:I

.field private description:Ljava/lang/String;

.field private fork_enable:Z

.field private fork_times:I

.field private id:J

.field private liked_times:I

.field private parent_id:I

.field private preview:Ljava/lang/String;

.field private publish_time:J

.field private view_times:I

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCollect_times()I
    .registers 2

    .line 90
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->collect_times:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFork_times()I
    .registers 2

    .line 106
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->fork_times:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 26
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->id:J

    return-wide v0
.end method

.method public getLiked_times()I
    .registers 2

    .line 74
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->liked_times:I

    return v0
.end method

.method public getParent_id()I
    .registers 2

    .line 50
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->parent_id:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 66
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->publish_time:J

    return-wide v0
.end method

.method public getView_times()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->view_times:I

    return v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isFork_enable()Z
    .registers 2

    .line 98
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->fork_enable:Z

    return v0
.end method

.method public setCollect_times(I)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->collect_times:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 62
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->description:Ljava/lang/String;

    return-void
.end method

.method public setFork_enable(Z)V
    .registers 2

    .line 102
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->fork_enable:Z

    return-void
.end method

.method public setFork_times(I)V
    .registers 2

    .line 110
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->fork_times:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 30
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->id:J

    return-void
.end method

.method public setLiked_times(I)V
    .registers 2

    .line 78
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->liked_times:I

    return-void
.end method

.method public setParent_id(I)V
    .registers 2

    .line 54
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->parent_id:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 70
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->publish_time:J

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->view_times:I

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfoV2;->work_name:Ljava/lang/String;

    return-void
.end method
