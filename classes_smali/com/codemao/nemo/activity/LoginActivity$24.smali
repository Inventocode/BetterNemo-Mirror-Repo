.class Lcom/codemao/nemo/activity/LoginActivity$24;
.super Landroid/text/style/ClickableSpan;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LoginActivity;->initPolicy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LoginActivity;)V
    .registers 2

    .line 1152
    iput-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$24;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1155
    iget-object p1, p0, Lcom/codemao/nemo/activity/LoginActivity$24;->this$0:Lcom/codemao/nemo/activity/LoginActivity;

    invoke-static {p1}, Lcom/codemao/nemo/util/WebUtil;->goPrivateProvision(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3

    .line 1160
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const v0, -0x909f23

    .line 1161
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v0, 0x0

    .line 1162
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
