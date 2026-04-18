.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->showUpdateConfirm()V
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

    .line 485
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 488
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->getViewName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-点击更新至发布"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$100(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 489
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;->val$createCustomDialogPopOne:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopTwo;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 490
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    new-instance v0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$8;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/codemao/creativecenter/NewBcmFragment;->saveWork(ZLcom/codemao/creativestore/listener/SaveBcmCallBack;)V

    return-void
.end method
