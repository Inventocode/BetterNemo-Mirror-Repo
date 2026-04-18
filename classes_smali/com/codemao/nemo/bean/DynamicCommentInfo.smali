.class public Lcom/codemao/nemo/bean/DynamicCommentInfo;
.super Ljava/lang/Object;
.source "DynamicCommentInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private comment_id:I

.field private comment_status:Z

.field private content:Ljava/lang/String;

.field private emoji_content:Ljava/lang/String;

.field private work_info:Lcom/codemao/nemo/bean/DynamicWorkInfo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComment_id()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->comment_id:I

    return v0
.end method

.method public getContent()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getEmoji_content()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->emoji_content:Ljava/lang/String;

    return-object v0
.end method

.method public getWork_info()Lcom/codemao/nemo/bean/DynamicWorkInfo;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->work_info:Lcom/codemao/nemo/bean/DynamicWorkInfo;

    return-object v0
.end method

.method public isComment_status()Z
    .registers 2

    .line 22
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->comment_status:Z

    return v0
.end method

.method public setComment_id(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->comment_id:I

    return-void
.end method

.method public setComment_status(Z)V
    .registers 2

    .line 26
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->comment_status:Z

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public setEmoji_content(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->emoji_content:Ljava/lang/String;

    return-void
.end method

.method public setWork_info(Lcom/codemao/nemo/bean/DynamicWorkInfo;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/bean/DynamicCommentInfo;->work_info:Lcom/codemao/nemo/bean/DynamicWorkInfo;

    return-void
.end method
