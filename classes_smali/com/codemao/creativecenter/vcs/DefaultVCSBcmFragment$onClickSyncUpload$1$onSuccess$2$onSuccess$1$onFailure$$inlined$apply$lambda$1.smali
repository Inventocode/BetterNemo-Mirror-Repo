.class final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->onFailure(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 353
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    const-string p1, "assist_works"

    .line 355
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteCustomBcms(Ljava/lang/String;)V

    .line 358
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1$onFailure$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2$onSuccess$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1$onSuccess$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickSyncUpload$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method
