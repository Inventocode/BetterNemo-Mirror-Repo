.class public Lcom/codemao/nemo/bean/MessageVO$MessageWork;
.super Ljava/lang/Object;
.source "MessageVO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/bean/MessageVO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageWork"
.end annotation


# instance fields
.field private be_comment_delete_status:Z

.field private be_comment_emoji_content:Ljava/lang/String;

.field private be_commented_content:Ljava/lang/String;

.field private be_commented_id:J

.field private comment_content:Ljava/lang/String;

.field private comment_delete_status:Z

.field private comment_emoji_content:Ljava/lang/String;

.field private comment_id:J

.field private first_comment_id:J

.field private is_delete:Z

.field private preview:Ljava/lang/String;

.field private publish_at:J

.field final synthetic this$0:Lcom/codemao/nemo/bean/MessageVO;

.field private work_id:J

.field private work_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/bean/MessageVO;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->this$0:Lcom/codemao/nemo/bean/MessageVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBe_comment_emoji_content()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_comment_emoji_content:Ljava/lang/String;

    return-object v0
.end method

.method public getBe_commented_content()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_commented_content:Ljava/lang/String;

    return-object v0
.end method

.method public getBe_commented_id()J
    .registers 3

    .line 125
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_commented_id:J

    return-wide v0
.end method

.method public getComment_content()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_content:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_emoji_content()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_emoji_content:Ljava/lang/String;

    return-object v0
.end method

.method public getComment_id()J
    .registers 3

    .line 109
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_id:J

    return-wide v0
.end method

.method public getFirst_comment_id()J
    .registers 3

    .line 101
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->first_comment_id:J

    return-wide v0
.end method

.method public getPreview()Ljava/lang/String;
    .registers 2

    .line 189
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->preview:Ljava/lang/String;

    return-object v0
.end method

.method public getPublish_at()J
    .registers 3

    .line 197
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->publish_at:J

    return-wide v0
.end method

.method public getWork_id()J
    .registers 3

    .line 173
    iget-wide v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->work_id:J

    return-wide v0
.end method

.method public getWork_name()Ljava/lang/String;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->work_name:Ljava/lang/String;

    return-object v0
.end method

.method public isBe_comment_delete_status()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_comment_delete_status:Z

    return v0
.end method

.method public isComment_delete_status()Z
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_delete_status:Z

    return v0
.end method

.method public isIs_delete()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->is_delete:Z

    return v0
.end method

.method public setBe_comment_delete_status(Z)V
    .registers 2

    .line 169
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_comment_delete_status:Z

    return-void
.end method

.method public setBe_comment_emoji_content(Ljava/lang/String;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_comment_emoji_content:Ljava/lang/String;

    return-void
.end method

.method public setBe_commented_content(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_commented_content:Ljava/lang/String;

    return-void
.end method

.method public setBe_commented_id(J)V
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->be_commented_id:J

    return-void
.end method

.method public setComment_content(Ljava/lang/String;)V
    .registers 2

    .line 121
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_content:Ljava/lang/String;

    return-void
.end method

.method public setComment_delete_status(Z)V
    .registers 2

    .line 161
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_delete_status:Z

    return-void
.end method

.method public setComment_emoji_content(Ljava/lang/String;)V
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_emoji_content:Ljava/lang/String;

    return-void
.end method

.method public setComment_id(J)V
    .registers 3

    .line 113
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->comment_id:J

    return-void
.end method

.method public setFirst_comment_id(J)V
    .registers 3

    .line 105
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->first_comment_id:J

    return-void
.end method

.method public setIs_delete(Z)V
    .registers 2

    .line 209
    iput-boolean p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->is_delete:Z

    return-void
.end method

.method public setPreview(Ljava/lang/String;)V
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->preview:Ljava/lang/String;

    return-void
.end method

.method public setPublish_at(J)V
    .registers 3

    .line 201
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->publish_at:J

    return-void
.end method

.method public setWork_id(J)V
    .registers 3

    .line 177
    iput-wide p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->work_id:J

    return-void
.end method

.method public setWork_name(Ljava/lang/String;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/codemao/nemo/bean/MessageVO$MessageWork;->work_name:Ljava/lang/String;

    return-void
.end method
