.class public Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;
.super Ljava/lang/Object;
.source "DiscoverySearchWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private comment_times:I

.field private course_work_type:Ljava/lang/String;

.field private create_time:J

.field private id:J

.field private isOffical:Z

.field private nickname:Ljava/lang/String;

.field private praise_times:I

.field private preview:Ljava/lang/String;

.field private publish_time:J

.field private user_id:J

.field private view_times:I

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_times()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->comment_times:I

    return v0
.end method

.method public getCreate_time()J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->create_time:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->id:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPraise_times()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->praise_times:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 85
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->publish_time:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 93
    iget-wide v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getView_times()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->view_times:I

    return v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isCourseInfo()Z
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->course_work_type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isOfficial()Z
    .registers 2

    .line 121
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->isOffical:Z

    return v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setComment_times(I)V
    .registers 2

    .line 49
    iput p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->comment_times:I

    return-void
.end method

.method public setCreate_time(J)V
    .registers 3

    .line 33
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->create_time:J

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 57
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->id:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPraise_times(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->praise_times:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 89
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->publish_time:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 97
    iput-wide p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->user_id:J

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 105
    iput p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->view_times:I

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 113
    iput-object p1, p0, Lcom/codemao/nemo/bean/DiscoverySearchWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
