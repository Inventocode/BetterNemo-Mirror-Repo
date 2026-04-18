.class Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;
.super Landroid/os/Handler;
.source "CuMessengerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/utils/util/CuMessengerUtils$ServerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/utils/util/CuMessengerUtils$ServerService;


# direct methods
.method constructor <init>(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;)V
    .registers 2

    .line 271
    iput-object p1, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;->this$0:Lcom/codemao/utils/util/CuMessengerUtils$ServerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 274
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 286
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_3a

    .line 279
    :cond_e
    iget-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;->this$0:Lcom/codemao/utils/util/CuMessengerUtils$ServerService;

    invoke-static {v0, p1}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->access$300(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;Landroid/os/Message;)V

    .line 280
    iget-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;->this$0:Lcom/codemao/utils/util/CuMessengerUtils$ServerService;

    invoke-static {v0, p1}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->access$400(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;Landroid/os/Message;)V

    goto :goto_3a

    .line 283
    :cond_19
    iget-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;->this$0:Lcom/codemao/utils/util/CuMessengerUtils$ServerService;

    invoke-static {v0}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->access$200(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 276
    :cond_29
    iget-object v0, p0, Lcom/codemao/utils/util/CuMessengerUtils$ServerService$1;->this$0:Lcom/codemao/utils/util/CuMessengerUtils$ServerService;

    invoke-static {v0}, Lcom/codemao/utils/util/CuMessengerUtils$ServerService;->access$200(Lcom/codemao/utils/util/CuMessengerUtils$ServerService;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3a
    return-void
.end method
