.class Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;
.super Ljava/lang/Object;
.source "NewBcmFragmentV2.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->initMBcm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V
    .registers 2

    .line 940
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 951
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const/4 v0, 0x0

    .line 952
    sput-object v0, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    .line 953
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->onLoadBcmError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 5

    const/4 v0, 0x0

    .line 943
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const/4 v0, 0x0

    .line 944
    sput-object v0, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    .line 945
    iget-object v0, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v0

    iget-object p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    const-string v1, ".cover"

    const-string v2, ".bcm"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 946
    iget-object p1, p0, Lcom/codemao/nemo/fragment/NewBcmFragmentV2$15;->this$0:Lcom/codemao/nemo/fragment/NewBcmFragmentV2;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/NewBcmFragmentV2;->access$1300(Lcom/codemao/nemo/fragment/NewBcmFragmentV2;)V

    return-void
.end method
