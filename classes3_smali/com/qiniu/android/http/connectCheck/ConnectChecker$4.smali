.class Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;
.super Ljava/lang/Object;
.source "ConnectChecker.java"

# interfaces
.implements Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/http/connectCheck/ConnectChecker;->checkAllHosts(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

.field final synthetic val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;


# direct methods
.method constructor <init>(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;)V
    .registers 3

    .line 83
    iput-object p1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    iput-object p2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V
    .registers 6

    .line 86
    invoke-static {p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker;->isConnected(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    monitor-enter v1

    .line 88
    :try_start_7
    iget-object v2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$512(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;I)I

    .line 89
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_b4

    if-nez v0, :cond_48

    .line 90
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v1

    if-ne v0, v1, :cond_1f

    goto :goto_48

    .line 102
    :cond_1f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "== check all hosts not completed totalCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " completeCount:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v0}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    goto :goto_b0

    .line 91
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    monitor-enter v0

    .line 92
    :try_start_4b
    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$600(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "== check all hosts has completed totalCount:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " completeCount:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 94
    monitor-exit v0

    return-void

    .line 96
    :cond_7d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== check all hosts completed totalCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v2}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$400(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " completeCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v2}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$500(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiniu/android/utils/LogUtil;->i(Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$checkStatus:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;

    invoke-static {v1, v3}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;->access$602(Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckStatus;Z)Z

    .line 99
    monitor-exit v0
    :try_end_ab
    .catchall {:try_start_4b .. :try_end_ab} :catchall_b1

    .line 100
    iget-object v0, p0, Lcom/qiniu/android/http/connectCheck/ConnectChecker$4;->val$completeHandler:Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;

    invoke-interface {v0, p1}, Lcom/qiniu/android/http/connectCheck/ConnectChecker$CheckCompleteHandler;->complete(Lcom/qiniu/android/http/metrics/UploadSingleRequestMetrics;)V

    :goto_b0
    return-void

    :catchall_b1
    move-exception p1

    .line 99
    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    throw p1

    :catchall_b4
    move-exception p1

    .line 89
    :try_start_b5
    monitor-exit v1
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b4

    throw p1
.end method
