.class Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$7;
.super Ljava/lang/Object;
.source "BaseKNWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->hideLoadingDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)V
    .registers 2

    .line 810
    iput-object p1, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$7;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 813
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$7;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->access$300(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 814
    iget-object v0, p0, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity$7;->this$0:Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;->access$300(Lcom/codemao/nemo/function/player/BaseKNWorkPlayActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_11
    return-void
.end method
