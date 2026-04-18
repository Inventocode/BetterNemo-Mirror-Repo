.class Lcom/codemao/nemo/activity/ShareProductActivity$11;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$request:Lcom/codemao/nemo/bean/GetMiaoCodeRequest;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 562
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iput-object p2, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11;->val$request:Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    iput-object p3, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$900(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/http/DiscoveryNetUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11;->val$request:Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    new-instance v2, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity$11;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
