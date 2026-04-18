.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->publishWork(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$from:I


# direct methods
.method public static synthetic $r8$lambda$4K_HcBMLJK_Mh1OgOqHLISh3zhE(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->lambda$run$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method

.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 539
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->val$from:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$run$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 10

    const-wide/16 v0, 0x1f4

    .line 552
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 554
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_a
    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 556
    new-instance v6, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;

    invoke-direct {v6, p0, p1, p2}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$1;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 542
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->hideSavintPop()V

    .line 543
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object v0

    if-nez v0, :cond_1f

    .line 544
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    new-instance v1, Lcom/codemao/nemo/view/ReactUploadDialog;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/view/ReactUploadDialog;-><init>(Landroid/content/Context;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-static {v0, v1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$802(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;Lcom/codemao/nemo/view/ReactUploadDialog;)Lcom/codemao/nemo/view/ReactUploadDialog;

    .line 546
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 547
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ReactUploadDialog;->resetProgress()V

    .line 548
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$800(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)Lcom/codemao/nemo/view/ReactUploadDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 550
    :cond_3d
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;->val$from:I

    new-instance v2, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2$9;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-static {v2}, Lcom/giu/xzz/utils/ThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method
