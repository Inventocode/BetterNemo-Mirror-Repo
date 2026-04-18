.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;
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

    .line 456
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 459
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 460
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$5;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method
