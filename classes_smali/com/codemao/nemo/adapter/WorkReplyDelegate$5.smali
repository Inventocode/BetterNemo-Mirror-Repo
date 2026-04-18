.class Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;
.super Landroid/text/style/ClickableSpan;
.source "WorkReplyDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/adapter/WorkReplyDelegate;->setClickableSpan(Ljava/lang/String;J)Landroid/text/SpannableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

.field final synthetic val$authorId:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/adapter/WorkReplyDelegate;J)V
    .registers 4

    .line 128
    iput-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    iput-wide p2, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;->val$authorId:J

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .line 131
    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->access$100(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;->val$authorId:J

    iget-object p1, p0, Lcom/codemao/nemo/adapter/WorkReplyDelegate$5;->this$0:Lcom/codemao/nemo/adapter/WorkReplyDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/adapter/WorkReplyDelegate;->access$200(Lcom/codemao/nemo/adapter/WorkReplyDelegate;)Ljava/lang/String;

    move-result-object v5

    const-string v1, ""

    const-string/jumbo v4, "作品详情页"

    const-string v6, ""

    invoke-static/range {v0 .. v6}, Lcom/codemao/nemo/activity/UserDetailActivity;->goDetail(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 136
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const v0, -0x8c9547

    .line 138
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
