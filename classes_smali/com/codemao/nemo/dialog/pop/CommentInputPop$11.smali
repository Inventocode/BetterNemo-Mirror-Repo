.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$11;
.super Landroid/text/style/ClickableSpan;
.source "CommentInputPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->changeExp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 2

    .line 699
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$11;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 702
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$11;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goLevelDes(Landroid/content/Context;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 2

    return-void
.end method
