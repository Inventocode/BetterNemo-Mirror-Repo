.class Lcom/codemao/nemo/view/CommentOptionDialogV2$1;
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

    .line 96
    iput-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$1;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 99
    iget-object p1, p0, Lcom/codemao/nemo/view/CommentOptionDialogV2$1;->this$0:Lcom/codemao/nemo/view/CommentOptionDialogV2;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
