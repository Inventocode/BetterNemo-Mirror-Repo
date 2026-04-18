.class Lcom/codemao/nemo/activity/CommentDetailActivity$11;
.super Ljava/lang/Object;
.source "CommentDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/CommentDetailActivity;->showInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/CommentDetailActivity;)V
    .registers 2

    .line 589
    iput-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .line 592
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2100(Lcom/codemao/nemo/activity/CommentDetailActivity;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2002(Lcom/codemao/nemo/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 593
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iget-object v1, v0, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2000(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/CommentDetailActivity;->access$2000(Lcom/codemao/nemo/activity/CommentDetailActivity;)Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onTextChange(Ljava/lang/String;)V
    .registers 4

    .line 598
    iget-object v0, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/CommentDetailActivity;->tvFakerInput:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p1, p0, Lcom/codemao/nemo/activity/CommentDetailActivity$11;->this$0:Lcom/codemao/nemo/activity/CommentDetailActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1200ff

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_17
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
