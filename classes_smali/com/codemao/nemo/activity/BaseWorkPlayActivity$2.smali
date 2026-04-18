.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$2;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$2;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->access$000(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/codemao/nemo/view/KeyboardHeightProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/KeyboardHeightProvider;->start()V

    return-void
.end method
