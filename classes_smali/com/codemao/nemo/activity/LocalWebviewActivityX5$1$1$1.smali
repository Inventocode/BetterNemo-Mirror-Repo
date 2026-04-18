.class Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$1;
.super Ljava/lang/Object;
.source "LocalWebviewActivityX5.java"

# interfaces
.implements Lcom/codemao/nemo/util/UserLevelupHelper$OnDissmissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;)V
    .registers 2

    .line 307
    iput-object p1, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$1;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 2

    .line 310
    iget-object v0, p0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1$1;->this$2:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1$1;->this$1:Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;

    iget-object v0, v0, Lcom/codemao/nemo/activity/LocalWebviewActivityX5$1;->this$0:Lcom/codemao/nemo/activity/LocalWebviewActivityX5;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/LocalWebviewActivityX5;->finish()V

    return-void
.end method
