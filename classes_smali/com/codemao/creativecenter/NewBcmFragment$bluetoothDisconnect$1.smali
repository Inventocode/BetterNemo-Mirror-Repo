.class final Lcom/codemao/creativecenter/NewBcmFragment$bluetoothDisconnect$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;->bluetoothDisconnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$bluetoothDisconnect$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 3401
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$bluetoothDisconnect$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/codemao/creativecenter/vm/SidebarVM;->currentStatus:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroidx/databinding/ObservableField;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_15

    goto :goto_1a

    :cond_15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1a
    const/4 v1, -0x1

    if-nez v0, :cond_1e

    goto :goto_2f

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2f

    .line 3402
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$bluetoothDisconnect$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$getSidebarVM$p(Lcom/codemao/creativecenter/NewBcmFragment;)Lcom/codemao/creativecenter/vm/SidebarVM;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vm/SidebarVM;->runOrStop()V

    :cond_2f
    :goto_2f
    return-void
.end method
