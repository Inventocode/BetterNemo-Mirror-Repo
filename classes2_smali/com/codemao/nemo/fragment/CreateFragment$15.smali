.class Lcom/codemao/nemo/fragment/CreateFragment$15;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->createMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 1202
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$15;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$15;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$15;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1205
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$15;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v5, Lcom/codemao/nemo/fragment/CreateFragment$15$1;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/fragment/CreateFragment$15$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$15;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
