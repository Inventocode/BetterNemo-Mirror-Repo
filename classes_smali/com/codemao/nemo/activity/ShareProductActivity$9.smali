.class Lcom/codemao/nemo/activity/ShareProductActivity$9;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->showGenerateMiaoDialog(I)V
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

    .line 523
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$9;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$9;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$9;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->finish()V

    return-void
.end method
