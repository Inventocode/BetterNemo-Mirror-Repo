.class public Lcom/codemao/nemo/bean/UserPublishedWorkInfo;
.super Ljava/lang/Object;
.source "UserPublishedWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TYPE_COURSE:Ljava/lang/String; = "USER_COURSE_RECOMMEND"

.field public static final TYPE_NEW:Ljava/lang/String; = "NEW_RECOMMEND"

.field public static final TYPE_SUBJECT:Ljava/lang/String; = "SUBJECT_RECOMMEND"

.field public static final TYPE_SYSTEM:Ljava/lang/String; = "SYSTEM_RECOMMEND"


# instance fields
.field private collect_times:I

.field private create_time:J

.field private description:Ljava/lang/String;

.field private fork_enable:Z

.field private fork_times:I

.field private id:J

.field private parent_id:I

.field private praise_times:I

.field private preview:Ljava/lang/String;

.field private publish_time:J

.field private recommend_type:Ljava/lang/String;

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

    .line 59
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->collect_times:I

    return v0
.end method

.method public getCreate_time()J
    .registers 3

    .line 107
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->create_time:J

    return-wide v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFork_times()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->fork_times:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 27
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->id:J

    return-wide v0
.end method

.method public getParent_id()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->parent_id:I

    return v0
.end method

.method public getPraise_times()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->praise_times:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->publish_time:J

    return-wide v0
.end method

.method public getRecommend_type()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->recommend_type:Ljava/lang/String;

    return-object v0
.end method

.method public getView_times()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->view_times:I

    return v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isFork_enable()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->fork_enable:Z

    return v0
.end method

.method public setCollect_times(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->collect_times:I

    return-void
.end method

.method public setCreate_time(J)V
    .registers 3

    .line 111
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->create_time:J

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public setFork_enable(Z)V
    .registers 2

    .line 87
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->fork_enable:Z

    return-void
.end method

.method public setFork_times(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->fork_times:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 31
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->id:J

    return-void
.end method

.method public setParent_id(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->parent_id:I

    return-void
.end method

.method public setPraise_times(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->praise_times:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 47
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 103
    iput-wide p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->publish_time:J

    return-void
.end method

.method public setRecommend_type(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->recommend_type:Ljava/lang/String;

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 55
    iput p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->view_times:I

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/nemo/bean/UserPublishedWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
