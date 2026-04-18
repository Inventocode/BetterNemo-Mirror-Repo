.class final Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;
.super Ljava/lang/Object;
.source "DefaultVCSBcmActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->handleClickExit()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Landroid/content/Context;Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 178
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;->$this_apply:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment$handleClickExit$$inlined$let$lambda$2;->this$0:Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/DefaultVCSBcmFragment;->onClickSyncUpload()V

    return-void
.end method
