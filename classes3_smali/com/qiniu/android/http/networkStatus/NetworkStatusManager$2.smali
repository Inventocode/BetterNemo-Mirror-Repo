.class Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$2;
.super Ljava/lang/Object;
.source "NetworkStatusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->asyncRecoverNetworkStatusFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$2;->this$0:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$2;->this$0:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    invoke-static {v0}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->access$200(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;)V

    .line 94
    iget-object v0, p0, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager$2;->this$0:Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;->access$102(Lcom/qiniu/android/http/networkStatus/NetworkStatusManager;Z)Z

    return-void
.end method
