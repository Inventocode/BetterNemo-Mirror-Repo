.class public Lcom/codemao/nemo/bean/ReplyCommentInfo;
.super Ljava/lang/Object;
.source "ReplyCommentInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_id:J

.field private comment_user:Lcom/codemao/nemo/bean/UserInfo;

.field private content:Ljava/lang/String;

.field private created_at:J

.field private emoji_content:Ljava/lang/String;

.field private is_liked:Z

.field private is_top:Z

.field private n_likes:I

.field private updated_at:J

.field private work_id:J

.field private work_user_id:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_id()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->comment_id:J

    return-wide v0
.end method

.method public getComment_user()Lcom/codemao/nemo/bean/UserInfo;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->comment_user:Lcom/codemao/nemo/bean/UserInfo;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getCreated_at()J
    .registers 3

    .line 43
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->created_at:J

    return-wide v0
.end method

.method public getEmoji_content()Ljava/lang/String;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->emoji_content:Ljava/lang/String;

    return-object v0
.end method

.method public getN_likes()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->n_likes:I

    return v0
.end method

.method public getUpdated_at()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->updated_at:J

    return-wide v0
.end method

.method public getWork_id()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->work_id:J

    return-wide v0
.end method

.method public getWork_user_id()J
    .registers 3

    .line 99
    iget-wide v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->work_user_id:J

    return-wide v0
.end method

.method public isIs_liked()Z
    .registers 2

    .line 59
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->is_liked:Z

    return v0
.end method

.method public isIs_top()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->is_top:Z

    return v0
.end method

.method public setComment_id(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->comment_id:J

    return-void
.end method

.method public setComment_user(Lcom/codemao/nemo/bean/UserInfo;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->comment_user:Lcom/codemao/nemo/bean/UserInfo;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setCreated_at(J)V
    .registers 3

    .line 47
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->created_at:J

    return-void
.end method

.method public setEmoji_content(Ljava/lang/String;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->emoji_content:Ljava/lang/String;

    return-void
.end method

.method public setIs_liked(Z)V
    .registers 2

    .line 63
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->is_liked:Z

    return-void
.end method

.method public setIs_top(Z)V
    .registers 2

    .line 71
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->is_top:Z

    return-void
.end method

.method public setN_likes(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->n_likes:I

    return-void
.end method

.method public setUpdated_at(J)V
    .registers 3

    .line 87
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->updated_at:J

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 95
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->work_id:J

    return-void
.end method

.method public setWork_user_id(J)V
    .registers 3

    .line 103
    iput-wide p1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->work_user_id:J

    return-void
.end method

.method public transToCommentItem()Lcom/codemao/nemo/bean/WorkCommentItem;
    .registers 4

    .line 108
    new-instance v0, Lcom/codemao/nemo/bean/WorkCommentItem;

    invoke-direct {v0}, Lcom/codemao/nemo/bean/WorkCommentItem;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->comment_user:Lcom/codemao/nemo/bean/UserInfo;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setUser(Lcom/codemao/nemo/bean/UserInfo;)V

    .line 110
    iget-wide v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->created_at:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setCreated_at(J)V

    .line 111
    iget-object v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setContent(Ljava/lang/String;)V

    .line 112
    iget-wide v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->comment_id:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setId(J)V

    .line 113
    iget v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->n_likes:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setN_likes(I)V

    .line 114
    iget-boolean v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->is_liked:Z

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setIs_liked(Z)V

    .line 115
    iget-wide v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->updated_at:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/bean/WorkCommentItem;->setUpdated_at(J)V

    .line 116
    iget-object v1, p0, Lcom/codemao/nemo/bean/ReplyCommentInfo;->emoji_content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/WorkCommentItem;->setEmoji_content(Ljava/lang/String;)V

    return-object v0
.end method
