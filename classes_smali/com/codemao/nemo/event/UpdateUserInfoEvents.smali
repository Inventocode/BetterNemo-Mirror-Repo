.class public Lcom/codemao/nemo/event/UpdateUserInfoEvents;
.super Ljava/lang/Object;
.source "UpdateUserInfoEvents.java"


# instance fields
.field private newAvatarUrl:Ljava/lang/String;

.field private newCoverUrl:Ljava/lang/String;

.field private newDes:Ljava/lang/String;

.field private newNickName:Ljava/lang/String;

.field private type:I

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatUpdateAvatarEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;
    .registers 5

    .line 48
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;-><init>()V

    const/4 v1, 0x3

    .line 49
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setType(I)V

    .line 50
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setNewAvatarUrl(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setUserId(J)V

    return-object v0
.end method

.method public static creatUpdateCoverEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;
    .registers 5

    .line 40
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;-><init>()V

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setType(I)V

    .line 42
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setNewCoverUrl(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setUserId(J)V

    return-object v0
.end method

.method public static creatUpdateDesEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;
    .registers 5

    .line 32
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;-><init>()V

    const/4 v1, 0x2

    .line 33
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setType(I)V

    .line 34
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setNewDes(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setUserId(J)V

    return-object v0
.end method

.method public static creatUpdateNickNameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;
    .registers 5

    .line 23
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;-><init>()V

    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setType(I)V

    .line 25
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setNewNickName(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setUserId(J)V

    return-object v0
.end method

.method public static createUpdateAvatarFrameEvents(JLjava/lang/String;)Lcom/codemao/nemo/event/UpdateUserInfoEvents;
    .registers 5

    .line 56
    new-instance v0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;-><init>()V

    const/4 v1, 0x4

    .line 57
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setType(I)V

    .line 58
    invoke-virtual {v0, p2}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setNewAvatarUrl(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->setUserId(J)V

    return-object v0
.end method


# virtual methods
.method public getNewAvatarUrl()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newAvatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewCoverUrl()Ljava/lang/String;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newCoverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNewDes()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newDes:Ljava/lang/String;

    return-object v0
.end method

.method public getNewNickName()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newNickName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->type:I

    return v0
.end method

.method public getUserId()J
    .registers 3

    .line 72
    iget-wide v0, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->userId:J

    return-wide v0
.end method

.method public setNewAvatarUrl(Ljava/lang/String;)V
    .registers 2

    .line 108
    iput-object p1, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newAvatarUrl:Ljava/lang/String;

    return-void
.end method

.method public setNewCoverUrl(Ljava/lang/String;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newCoverUrl:Ljava/lang/String;

    return-void
.end method

.method public setNewDes(Ljava/lang/String;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newDes:Ljava/lang/String;

    return-void
.end method

.method public setNewNickName(Ljava/lang/String;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->newNickName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->type:I

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    .line 76
    iput-wide p1, p0, Lcom/codemao/nemo/event/UpdateUserInfoEvents;->userId:J

    return-void
.end method
