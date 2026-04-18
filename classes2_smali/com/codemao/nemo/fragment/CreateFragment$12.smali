.class Lcom/codemao/nemo/fragment/CreateFragment$12;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/ShareMiaoCodeDialog$ShareMiaoCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->showShareMiaoCodeDialog(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;I)V
    .registers 3

    .line 1130
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shareByMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 1133
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2600(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/ShareMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1134
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1135
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 1139
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$12;->val$position:I

    invoke-static {v0, p1, v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2700(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method
