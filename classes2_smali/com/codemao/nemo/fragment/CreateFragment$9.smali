.class Lcom/codemao/nemo/fragment/CreateFragment$9;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->cancelPublish(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 2

    .line 1057
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$9;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1061
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$9;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2100(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
