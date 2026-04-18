.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onProgressChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;I)V
    .registers 3

    .line 960
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iput p2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 963
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->progressBar:Lcom/codemao/nemo/view/WebViewProgressBar;

    if-eqz v0, :cond_b

    .line 964
    iget v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$7;->val$progress:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/WebViewProgressBar;->setProgress(I)V

    :cond_b
    return-void
.end method
