.class Lcom/qiniu/android/utils/SingleFlight$1;
.super Ljava/lang/Object;
.source "SingleFlight.java"

# interfaces
.implements Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/utils/SingleFlight;->perform(Ljava/lang/String;Lcom/qiniu/android/utils/SingleFlight$ActionHandler;Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/qiniu/android/utils/SingleFlight$CompleteHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qiniu/android/utils/SingleFlight;

.field final synthetic val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

.field final synthetic val$finalKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qiniu/android/utils/SingleFlight;Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/String;)V
    .registers 4

    .line 69
    iput-object p1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->this$0:Lcom/qiniu/android/utils/SingleFlight;

    iput-object p2, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    iput-object p3, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    monitor-enter v0

    .line 74
    :try_start_3
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$100(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 75
    monitor-exit v0

    return-void

    .line 77
    :cond_d
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$102(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Z)Z

    .line 78
    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1, p1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$602(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$400(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_60

    .line 81
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalKey:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 82
    monitor-enter p0

    .line 83
    :try_start_29
    iget-object v0, p0, Lcom/qiniu/android/utils/SingleFlight$1;->this$0:Lcom/qiniu/android/utils/SingleFlight;

    invoke-static {v0}, Lcom/qiniu/android/utils/SingleFlight;->access$700(Lcom/qiniu/android/utils/SingleFlight;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    monitor-exit p0

    goto :goto_39

    :catchall_36
    move-exception p1

    monitor-exit p0
    :try_end_38
    .catchall {:try_start_29 .. :try_end_38} :catchall_36

    throw p1

    .line 86
    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3d
    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;

    if-eqz v0, :cond_3d

    .line 87
    invoke-static {v0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 88
    invoke-static {v0}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;->access$300(Lcom/qiniu/android/utils/SingleFlight$SingleFlightTask;)Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/qiniu/android/utils/SingleFlight$1;->val$finalCall:Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;

    invoke-static {v1}, Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;->access$600(Lcom/qiniu/android/utils/SingleFlight$SingleFlightCall;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qiniu/android/utils/SingleFlight$CompleteHandler;->complete(Ljava/lang/Object;)V

    goto :goto_3d

    :cond_5f
    return-void

    :catchall_60
    move-exception p1

    .line 80
    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p1
.end method
