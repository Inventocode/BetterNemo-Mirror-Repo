.class Lcom/codemao/nemo/sdk/update/UpdateHelper$7;
.super Ljava/lang/Object;
.source "UpdateHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/sdk/update/UpdateHelper;->updateDialog(Landroid/os/Handler;Lcn/codemao/android/update/vo/UpdateResultVO;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V
    .registers 3

    .line 225
    iput-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$7;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    iput-object p2, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$7;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$7;->this$0:Lcom/codemao/nemo/sdk/update/UpdateHelper;

    iget-object v0, p0, Lcom/codemao/nemo/sdk/update/UpdateHelper$7;->val$handler:Landroid/os/Handler;

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->access$800(Lcom/codemao/nemo/sdk/update/UpdateHelper;Landroid/os/Handler;)V

    return-void
.end method
