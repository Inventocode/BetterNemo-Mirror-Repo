.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$8;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$CloseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showGenerateMiaoDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 2

    .line 519
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$8;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .line 522
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$8;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$8;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method
