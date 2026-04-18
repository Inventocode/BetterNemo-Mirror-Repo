.class public Lcom/codemao/nemo/event/CommentEvents;
.super Ljava/lang/Object;
.source "CommentEvents.java"


# instance fields
.field private commentId:J

.field private commentPosition:I

.field private isLiked:Z

.field private replyId:J

.field private type:I

.field private workReplyItem:Lcom/codemao/nemo/bean/WorkReplyItem;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatCommentDeleteSuccessEvent(JJI)Lcom/codemao/nemo/event/CommentEvents;
    .registers 5

    .line 61
    new-instance p0, Lcom/codemao/nemo/event/CommentEvents;

    invoke-direct {p0}, Lcom/codemao/nemo/event/CommentEvents;-><init>()V

    .line 62
    invoke-virtual {p0, p2, p3}, Lcom/codemao/nemo/event/CommentEvents;->setCommentId(J)V

    const/4 p1, 0x2

    .line 63
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/event/CommentEvents;->setType(I)V

    .line 64
    invoke-virtual {p0, p4}, Lcom/codemao/nemo/event/CommentEvents;->setCommentPosition(I)V

    return-object p0
.end method

.method public static creatCommentSuccessEvents(J)Lcom/codemao/nemo/event/CommentEvents;
    .registers 3

    .line 35
    new-instance v0, Lcom/codemao/nemo/event/CommentEvents;

    invoke-direct {v0}, Lcom/codemao/nemo/event/CommentEvents;-><init>()V

    .line 36
    invoke-virtual {v0, p0, p1}, Lcom/codemao/nemo/event/CommentEvents;->setWorkId(J)V

    const/4 p0, 0x0

    .line 37
    invoke-virtual {v0, p0}, Lcom/codemao/nemo/event/CommentEvents;->setType(I)V

    return-object v0
.end method

.method public static creatReplyDeleteSuccessEvent(JJIJ)Lcom/codemao/nemo/event/CommentEvents;
    .registers 7

    .line 52
    new-instance p0, Lcom/codemao/nemo/event/CommentEvents;

    invoke-direct {p0}, Lcom/codemao/nemo/event/CommentEvents;-><init>()V

    .line 53
    invoke-virtual {p0, p2, p3}, Lcom/codemao/nemo/event/CommentEvents;->setCommentId(J)V

    const/4 p1, 0x3

    .line 54
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/event/CommentEvents;->setType(I)V

    .line 55
    invoke-virtual {p0, p5, p6}, Lcom/codemao/nemo/event/CommentEvents;->setReplyId(J)V

    .line 56
    invoke-virtual {p0, p4}, Lcom/codemao/nemo/event/CommentEvents;->setCommentPosition(I)V

    return-object p0
.end method

.method public static creatReplySuccessEvents(JJILcom/codemao/nemo/bean/WorkReplyItem;)Lcom/codemao/nemo/event/CommentEvents;
    .registers 6

    .line 43
    new-instance p0, Lcom/codemao/nemo/event/CommentEvents;

    invoke-direct {p0}, Lcom/codemao/nemo/event/CommentEvents;-><init>()V

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/codemao/nemo/event/CommentEvents;->setCommentId(J)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/event/CommentEvents;->setType(I)V

    .line 46
    invoke-virtual {p0, p5}, Lcom/codemao/nemo/event/CommentEvents;->setWorkReplyItem(Lcom/codemao/nemo/bean/WorkReplyItem;)V

    .line 47
    invoke-virtual {p0, p4}, Lcom/codemao/nemo/event/CommentEvents;->setCommentPosition(I)V

    return-object p0
.end method

.method public static createUpdateCommentLikeStatusEvent(JJIZ)Lcom/codemao/nemo/event/CommentEvents;
    .registers 6

    .line 69
    new-instance p0, Lcom/codemao/nemo/event/CommentEvents;

    invoke-direct {p0}, Lcom/codemao/nemo/event/CommentEvents;-><init>()V

    .line 70
    invoke-virtual {p0, p2, p3}, Lcom/codemao/nemo/event/CommentEvents;->setCommentId(J)V

    const/4 p1, 0x4

    .line 71
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/event/CommentEvents;->setType(I)V

    .line 72
    invoke-virtual {p0, p4}, Lcom/codemao/nemo/event/CommentEvents;->setCommentPosition(I)V

    .line 73
    invoke-virtual {p0, p5}, Lcom/codemao/nemo/event/CommentEvents;->setLiked(Z)V

    return-object p0
.end method


# virtual methods
.method public getCommentId()J
    .registers 3

    .line 102
    iget-wide v0, p0, Lcom/codemao/nemo/event/CommentEvents;->commentId:J

    return-wide v0
.end method

.method public getCommentPosition()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/codemao/nemo/event/CommentEvents;->commentPosition:I

    return v0
.end method

.method public getReplyId()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/codemao/nemo/event/CommentEvents;->replyId:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/codemao/nemo/event/CommentEvents;->type:I

    return v0
.end method

.method public getWorkReplyItem()Lcom/codemao/nemo/bean/WorkReplyItem;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/codemao/nemo/event/CommentEvents;->workReplyItem:Lcom/codemao/nemo/bean/WorkReplyItem;

    return-object v0
.end method

.method public isLiked()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lcom/codemao/nemo/event/CommentEvents;->isLiked:Z

    return v0
.end method

.method public setCommentId(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/codemao/nemo/event/CommentEvents;->commentId:J

    return-void
.end method

.method public setCommentPosition(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/codemao/nemo/event/CommentEvents;->commentPosition:I

    return-void
.end method

.method public setLiked(Z)V
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/codemao/nemo/event/CommentEvents;->isLiked:Z

    return-void
.end method

.method public setReplyId(J)V
    .registers 3

    .line 114
    iput-wide p1, p0, Lcom/codemao/nemo/event/CommentEvents;->replyId:J

    return-void
.end method

.method public setType(I)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/codemao/nemo/event/CommentEvents;->type:I

    return-void
.end method

.method public setWorkId(J)V
    .registers 3

    return-void
.end method

.method public setWorkReplyItem(Lcom/codemao/nemo/bean/WorkReplyItem;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/codemao/nemo/event/CommentEvents;->workReplyItem:Lcom/codemao/nemo/bean/WorkReplyItem;

    return-void
.end method
