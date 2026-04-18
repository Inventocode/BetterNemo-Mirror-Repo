.class public Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;
.super Ljava/lang/Object;
.source "WorkDetailRecommendWorkInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private avatar:Ljava/lang/String;

.field private like_times:J

.field private nickname:Ljava/lang/String;

.field private parent_id:J

.field private praise_times:I

.field private preview:Ljava/lang/String;

.field private user_id:J

.field private view_times:I

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getLike_times()J
    .registers 3

    .line 49
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->like_times:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getParent_id()J
    .registers 3

    .line 61
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->parent_id:J

    return-wide v0
.end method

.method public getPraise_times()I
    .registers 2

    .line 45
    iget v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->praise_times:I

    return v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getUser_id()J
    .registers 3

    .line 37
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->user_id:J

    return-wide v0
.end method

.method public getView_times()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->view_times:I

    return v0
.end method

.method public getWork_id()J
    .registers 3

    .line 29
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setLike_times(J)V
    .registers 3

    .line 86
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->like_times:J

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setParent_id(J)V
    .registers 3

    .line 98
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->parent_id:J

    return-void
.end method

.method public setPraise_times(I)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->praise_times:I

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 78
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->preview:Ljava/lang/String;

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 74
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->user_id:J

    return-void
.end method

.method public setView_times(I)V
    .registers 2

    .line 25
    iput p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->view_times:I

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 66
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkDetailRecommendWorkInfo;->work_name:Ljava/lang/String;

    return-void
.end method
