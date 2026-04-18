.class final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->onClickApply()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 415
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 416
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->access$getCreateUtils$p(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)Lcom/codemao/creativestore/presenter/CreateUtils;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getMetaVO()Lcom/codemao/creativestore/bean/MetaVO;

    move-result-object p1

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MetaVO;->getUpload_status()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 418
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, v0, Lcom/codemao/creativestore/bean/WorksEvent;->seekHelperWorkId:Ljava/lang/String;

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    const-string v1, "origin_bcm_id"

    .line 416
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_2a
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    const/4 v0, 0x0

    new-instance v1, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1$1;-><init>(Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$onClickApply$$inlined$apply$lambda$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWorkWithoutPop(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method
