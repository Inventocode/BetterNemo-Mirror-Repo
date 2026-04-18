.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$request:Lcom/codemao/nemo/bean/GetMiaoCodeRequest;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 4

    .line 558
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->val$request:Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 561
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$700(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/http/DiscoveryNetUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->val$request:Lcom/codemao/nemo/bean/GetMiaoCodeRequest;

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareMiaoCode(Lcom/codemao/nemo/bean/GetMiaoCodeRequest;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
