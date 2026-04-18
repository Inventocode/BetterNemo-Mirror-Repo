.class Lcom/codemao/nemo/fragment/WorkCommentFragment$12;
.super Ljava/lang/Object;
.source "WorkCommentFragment.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/WorkCommentFragment;->showReplyInput()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/WorkCommentFragment;)V
    .registers 2

    .line 600
    iput-object p1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .line 603
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2102(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2200(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->getEmojiContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2302(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1200ff

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_36
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2100(Lcom/codemao/nemo/fragment/WorkCommentFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2600(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChange(Ljava/lang/String;)V
    .registers 5

    .line 611
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/WorkCommentFragment;->tvFakeInput:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1200ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_19

    :cond_18
    move-object v1, p1

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v0, p0, Lcom/codemao/nemo/fragment/WorkCommentFragment$12;->this$0:Lcom/codemao/nemo/fragment/WorkCommentFragment;

    invoke-static {v0, p1}, Lcom/codemao/nemo/fragment/WorkCommentFragment;->access$2600(Lcom/codemao/nemo/fragment/WorkCommentFragment;Ljava/lang/String;)V

    return-void
.end method
