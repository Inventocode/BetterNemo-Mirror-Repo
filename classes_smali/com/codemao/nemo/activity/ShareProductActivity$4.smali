.class Lcom/codemao/nemo/activity/ShareProductActivity$4;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->upload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ShareProductActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;)V
    .registers 2

    .line 295
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 298
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$4;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/ShareProductActivity$4$1;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity$4;)V

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
