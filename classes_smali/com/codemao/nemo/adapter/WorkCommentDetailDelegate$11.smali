.class Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;
.super Landroid/text/style/ClickableSpan;
.source "WorkCommentDetailDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->setClickableSpan(Ljava/lang/String;J)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

.field final synthetic val$authorId:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;J)V
    .registers 4

    .line 269
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    iput-wide p2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;->val$authorId:J

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 273
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$200(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;->val$authorId:J

    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate$11;->this$0:Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;->access$300(Lcom/codemao/nemo/adapter/WorkCommentDetailDelegate;)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string/jumbo v4, "作品详情页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 278
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const v0, -0x909f23

    .line 280
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
