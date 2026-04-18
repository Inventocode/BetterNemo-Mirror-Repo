.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->showListDialog(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;

.field final synthetic val$dialog:Landroid/app/AlertDialog;

.field final synthetic val$response:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;Landroid/app/AlertDialog;Ljava/util/List;)V
    .registers 4

    .line 990
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;->val$dialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;->val$response:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 993
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 994
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;->val$response:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;

    .line 995
    iget-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16$1;->this$1:Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$16;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/utils/bcm/bean/BcmCloudWorksHistory;->getBcm_url()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/codemao/creativecenter/NewBcmFragment;->downloadAndLoadNewBcmWork(Ljava/lang/String;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method
