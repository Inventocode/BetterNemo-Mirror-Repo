.class Lcom/codemao/nemo/fragment/CreateFragment$14;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->generate(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
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

    .line 1189
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryAgain()V
    .registers 4

    .line 1192
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2900(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1193
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$14;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$2700(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    return-void
.end method
