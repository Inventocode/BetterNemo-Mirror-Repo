.class Lcn/codemao/android/stat/ConnectionQueue$1;
.super Ljava/lang/Object;
.source "ConnectionQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/stat/ConnectionQueue;->tokenSession(Ljava/lang/String;Lcn/codemao/android/stat/CodeMaoStat$CountlyMessagingMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/stat/ConnectionQueue;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/codemao/android/stat/ConnectionQueue;Ljava/lang/String;)V
    .registers 3

    .line 276
    iput-object p1, p0, Lcn/codemao/android/stat/ConnectionQueue$1;->this$0:Lcn/codemao/android/stat/ConnectionQueue;

    iput-object p2, p0, Lcn/codemao/android/stat/ConnectionQueue$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue$1;->this$0:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-static {v0}, Lcn/codemao/android/stat/ConnectionQueue;->access$000(Lcn/codemao/android/stat/ConnectionQueue;)Lcn/codemao/android/stat/CountlyStore;

    move-result-object v0

    iget-object v1, p0, Lcn/codemao/android/stat/ConnectionQueue$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/stat/CountlyStore;->addConnection(Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcn/codemao/android/stat/ConnectionQueue$1;->this$0:Lcn/codemao/android/stat/ConnectionQueue;

    invoke-virtual {v0}, Lcn/codemao/android/stat/ConnectionQueue;->tick()V

    return-void
.end method
