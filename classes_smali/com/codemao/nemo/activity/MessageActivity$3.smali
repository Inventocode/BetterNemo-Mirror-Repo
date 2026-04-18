.class Lcom/codemao/nemo/activity/MessageActivity$3;
.super Ljava/lang/Object;
.source "MessageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/MessageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/MessageActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/MessageActivity;)V
    .registers 2

    .line 153
    iput-object p1, p0, Lcom/codemao/nemo/activity/MessageActivity$3;->this$0:Lcom/codemao/nemo/activity/MessageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/activity/MessageActivity$3;->this$0:Lcom/codemao/nemo/activity/MessageActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/MessageActivity;->customTabView:Lcom/codemao/nemo/view/CustomTabViewMessage;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/CustomTabViewMessage;->setAllCount()V

    return-void
.end method
