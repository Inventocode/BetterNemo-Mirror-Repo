.class public Lcom/codemao/nemo/bean/ReworkHistoryVO;
.super Lcom/codemao/nemo/bean/BaseData;
.source "ReworkHistoryVO.java"


# instance fields
.field private avatar:Ljava/lang/String;

.field private created_time:J

.field private fork_times:I

.field private id:J

.field private is_deleted:Z

.field private nickname:Ljava/lang/String;

.field private publish_time:J

.field private user_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/codemao/nemo/bean/BaseData;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar()Ljava/lang/String;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_time()J
    .registers 3

    .line 35
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->created_time:J

    return-wide v0
.end method

.method public getFork_times()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->fork_times:I

    return v0
.end method

.method public getId()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->id:J

    return-wide v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_time()J
    .registers 3

    .line 67
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->publish_time:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 75
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->user_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isIs_deleted()Z
    .registers 2

    .line 51
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->is_deleted:Z

    return v0
.end method

.method public setAvatar(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->avatar:Ljava/lang/String;

    return-void
.end method

.method public setCreated_time(J)V
    .registers 3

    .line 39
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->created_time:J

    return-void
.end method

.method public setFork_times(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->fork_times:I

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 47
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->id:J

    return-void
.end method

.method public setIs_deleted(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->is_deleted:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setPublish_time(J)V
    .registers 3

    .line 71
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->publish_time:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 79
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->user_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReworkHistoryVO;->work_name:Ljava/lang/String;

    return-void
.end method
