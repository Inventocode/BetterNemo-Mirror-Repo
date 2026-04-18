.class public Lcom/codemao/nemo/bean/MessageVO;
.super Ljava/lang/Object;
.source "MessageVO.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/bean/MessageVO$MessageWork;
    }
.end annotation


# instance fields
.field private avatar_url:Ljava/lang/String;

.field private created_at:J

.field private message_body:Ljava/lang/String;

.field private message_type:I

.field private nickname:Ljava/lang/String;

.field private updated_at:J

.field private user_id:J

.field private work:Lcom/codemao/nemo/bean/MessageVO$MessageWork;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvatar_url()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO;->avatar_url:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()J
    .registers 3

    .line 36
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO;->created_at:J

    return-wide v0
.end method

.method public getMessage_body()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO;->message_body:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage_type()I
    .registers 2

    .line 52
    iget v0, p0, Lcom/codemao/nemo/bean/MessageVO;->message_type:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO;->updated_at:J

    return-wide v0
.end method

.method public getUser_id()J
    .registers 3

    .line 76
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO;->user_id:J

    return-wide v0
.end method

.method public getWork()Lcom/codemao/nemo/bean/MessageVO$MessageWork;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO;->work:Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    return-object v0
.end method

.method public setAvatar_url(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO;->avatar_url:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 40
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO;->created_at:J

    return-void
.end method

.method public setMessage_body(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO;->message_body:Ljava/lang/String;

    return-void
.end method

.method public setMessage_type(I)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/codemao/nemo/bean/MessageVO;->message_type:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .registers 2

    .line 64
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 72
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO;->updated_at:J

    return-void
.end method

.method public setUser_id(J)V
    .registers 3

    .line 80
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO;->user_id:J

    return-void
.end method

.method public setWork(Lcom/codemao/nemo/bean/MessageVO$MessageWork;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO;->work:Lcom/codemao/nemo/bean/MessageVO$MessageWork;

    return-void
.end method
