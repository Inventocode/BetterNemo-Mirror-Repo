.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showModuleConfirm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

.field final synthetic val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;)V
    .registers 3

    .line 448
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 451
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/codemao/creativestore/bean/WorksEvent;->setUpdate(Z)V

    .line 452
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->deleteWork()V

    .line 453
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 454
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$6;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/NewBcmFragment;->finish()V

    return-void
.end method
