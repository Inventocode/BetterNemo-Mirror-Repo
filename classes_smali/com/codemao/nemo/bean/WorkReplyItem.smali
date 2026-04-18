.class public Lcom/codemao/nemo/bean/WorkReplyItem;
.super Ljava/lang/Object;
.source "WorkReplyItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private content:Ljava/lang/String;

.field private created_at:J

.field private emoji_content:Ljava/lang/String;

.field private head_frame_url:Ljava/lang/String;

.field private id:J

.field private isManualAdd:Z

.field private is_liked:Z

.field private is_own:Z

.field private n_likes:I

.field private parent_user:Lcom/codemao/nemo/bean/UserInfo;

.field private reply_user:Lcom/codemao/nemo/bean/UserInfo;

.field private small_head_frame_url:Ljava/lang/String;

.field private updated_at:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->created_at:J

    return-wide v0
.end method

.method public getEmoji_content()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->emoji_content:Ljava/lang/String;

    return-object v0
.end method

.method public getHead_frame_url()Ljava/lang/String;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->id:J

    return-wide v0
.end method

.method public getN_likes()I
    .registers 2

    .line 70
    iget v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->n_likes:I

    return v0
.end method

.method public getParent_user()Lcom/codemao/nemo/bean/UserInfo;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->parent_user:Lcom/codemao/nemo/bean/UserInfo;

    return-object v0
.end method

.method public getReply_user()Lcom/codemao/nemo/bean/UserInfo;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->reply_user:Lcom/codemao/nemo/bean/UserInfo;

    return-object v0
.end method

.method public getSmall_head_frame_url()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->small_head_frame_url:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->updated_at:J

    return-wide v0
.end method

.method public isIs_liked()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->is_liked:Z

    return v0
.end method

.method public isIs_own()Z
    .registers 2

    .line 86
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->is_own:Z

    return v0
.end method

.method public isManualAdd()Z
    .registers 2

    .line 118
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->isManualAdd:Z

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 114
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->created_at:J

    return-void
.end method

.method public setEmoji_content(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->emoji_content:Ljava/lang/String;

    return-void
.end method

.method public setHead_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 58
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->id:J

    return-void
.end method

.method public setIs_liked(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->is_liked:Z

    return-void
.end method

.method public setIs_own(Z)V
    .registers 2

    .line 90
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->is_own:Z

    return-void
.end method

.method public setManualAdd(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->isManualAdd:Z

    return-void
.end method

.method public setN_likes(I)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->n_likes:I

    return-void
.end method

.method public setParent_user(Lcom/codemao/nemo/bean/UserInfo;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->parent_user:Lcom/codemao/nemo/bean/UserInfo;

    return-void
.end method

.method public setReply_user(Lcom/codemao/nemo/bean/UserInfo;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->reply_user:Lcom/codemao/nemo/bean/UserInfo;

    return-void
.end method

.method public setSmall_head_frame_url(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->small_head_frame_url:Ljava/lang/String;

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/codemao/nemo/bean/WorkReplyItem;->updated_at:J

    return-void
.end method
