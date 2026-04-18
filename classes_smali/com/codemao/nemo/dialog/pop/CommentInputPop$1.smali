.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$1;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->initView()V
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

    .line 310
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$000(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 324
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$000(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop$OnStatusChangeListner;->onTextChange(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
