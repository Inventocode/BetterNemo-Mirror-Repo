.class Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivity.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1$1;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivity$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivity$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->finish()V

    return-void
.end method
