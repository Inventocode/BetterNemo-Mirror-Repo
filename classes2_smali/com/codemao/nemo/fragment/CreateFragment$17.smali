.class Lcom/codemao/nemo/fragment/CreateFragment$17;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->download(ZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$add:Z

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V
    .registers 5

    .line 1418
    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    iput-boolean p4, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$add:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    .line 1421
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 1423
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v1, :cond_8

    goto :goto_38

    .line 1426
    :cond_8
    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getWork_name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v4}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_version()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getPreview()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getScreenshot_cover_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v0, v2

    iput-boolean v0, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    .line 1430
    :goto_38
    iget-boolean v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$add:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    new-instance v4, Lcom/codemao/nemo/fragment/CreateFragment$17$1;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/fragment/CreateFragment$17$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$17;)V

    invoke-static {v0, v2, v1, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->download(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;)V

    return-void
.end method
