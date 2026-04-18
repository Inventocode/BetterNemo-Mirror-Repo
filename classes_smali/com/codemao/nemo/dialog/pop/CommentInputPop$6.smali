.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$6;
.super Ljava/lang/Object;
.source "CommentInputPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 455
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$6;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 460
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$6;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->dismiss()V

    return-void
.end method
