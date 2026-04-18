.class Lcom/codemao/nemo/view/CommentOptionDialogV2$6;
.super Ljava/lang/Object;
.source "CommentOptionDialogV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CommentOptionDialogV2;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CommentOptionDialogV2;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 135
    iget-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-static {p1}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->access$000(Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;

    move-result-object p1

    if-eqz p1, :cond_23

    .line 136
    iget-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-static {p1}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->access$100(Lcom/codemao/nemo/view/CommentOptionDialogV2;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 137
    iget-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-static {p1}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->access$000(Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;->cancelTop()V

    goto :goto_23

    .line 139
    :cond_1a
    iget-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$6;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-static {p1}, Lcom/codemao/nemo/view/CommentOptionDialogV2;->access$000(Lcom/codemao/nemo/view/CommentOptionDialogV2;)Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/CommentOptionDialogV2$OnItemClickChooseListener;->top()V

    :cond_23
    :goto_23
    return-void
.end method
