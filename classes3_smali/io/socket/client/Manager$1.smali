.class Lio/socket/client/Manager$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->open(Lio/socket/client/Manager$OpenCallback;)Lio/socket/client/Manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;

.field final synthetic val$fn:Lio/socket/client/Manager$OpenCallback;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager$OpenCallback;)V
    .registers 3

    .line 270
    iput-object p1, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iput-object p2, p0, Lio/socket/client/Manager$1;->val$fn:Lio/socket/client/Manager$OpenCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 273
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    .line 274
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v5, v5, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    aput-object v5, v4, v3

    const-string v5, "readyState %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 276
    :cond_23
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v0, v0, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    sget-object v4, Lio/socket/client/Manager$ReadyState;->OPEN:Lio/socket/client/Manager$ReadyState;

    if-eq v0, v4, :cond_ef

    sget-object v4, Lio/socket/client/Manager$ReadyState;->OPENING:Lio/socket/client/Manager$ReadyState;

    if-ne v0, v4, :cond_31

    goto/16 :goto_ef

    .line 278
    :cond_31
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 279
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v5}, Lio/socket/client/Manager;->access$100(Lio/socket/client/Manager;)Ljava/net/URI;

    move-result-object v5

    aput-object v5, v1, v3

    const-string v5, "opening %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 281
    :cond_52
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    new-instance v1, Lio/socket/client/Manager$Engine;

    iget-object v5, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v5}, Lio/socket/client/Manager;->access$100(Lio/socket/client/Manager;)Ljava/net/URI;

    move-result-object v5

    iget-object v6, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v6}, Lio/socket/client/Manager;->access$200(Lio/socket/client/Manager;)Lio/socket/client/Manager$Options;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lio/socket/client/Manager$Engine;-><init>(Ljava/net/URI;Lio/socket/engineio/client/Socket$Options;)V

    iput-object v1, v0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 282
    iget-object v13, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v12, v13, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    .line 284
    iput-object v4, v13, Lio/socket/client/Manager;->readyState:Lio/socket/client/Manager$ReadyState;

    .line 285
    invoke-static {v13, v3}, Lio/socket/client/Manager;->access$302(Lio/socket/client/Manager;Z)Z

    .line 288
    new-instance v0, Lio/socket/client/Manager$1$1;

    invoke-direct {v0, p0, v13}, Lio/socket/client/Manager$1$1;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    const-string v1, "transport"

    invoke-virtual {v12, v1, v0}, Lio/socket/emitter/Emitter;->on(Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/emitter/Emitter;

    .line 295
    new-instance v0, Lio/socket/client/Manager$1$2;

    invoke-direct {v0, p0, v13}, Lio/socket/client/Manager$1$2;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    const-string v1, "open"

    invoke-static {v12, v1, v0}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v0

    .line 303
    new-instance v1, Lio/socket/client/Manager$1$3;

    invoke-direct {v1, p0, v13}, Lio/socket/client/Manager$1$3;-><init>(Lio/socket/client/Manager$1;Lio/socket/client/Manager;)V

    const-string v4, "error"

    invoke-static {v12, v4, v1}, Lio/socket/client/On;->on(Lio/socket/emitter/Emitter;Ljava/lang/String;Lio/socket/emitter/Emitter$Listener;)Lio/socket/client/On$Handle;

    move-result-object v1

    .line 322
    iget-object v4, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v4}, Lio/socket/client/Manager;->access$800(Lio/socket/client/Manager;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_d6

    .line 323
    iget-object v4, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v4}, Lio/socket/client/Manager;->access$800(Lio/socket/client/Manager;)J

    move-result-wide v4

    .line 324
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v2, v3

    const-string v3, "connection attempt will timeout after %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 326
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 327
    new-instance v3, Lio/socket/client/Manager$1$4;

    move-object v7, v3

    move-object v8, p0

    move-wide v9, v4

    move-object v11, v0

    invoke-direct/range {v7 .. v13}, Lio/socket/client/Manager$1$4;-><init>(Lio/socket/client/Manager$1;JLio/socket/client/On$Handle;Lio/socket/engineio/client/Socket;Lio/socket/client/Manager;)V

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 343
    iget-object v3, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v3}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v3

    new-instance v4, Lio/socket/client/Manager$1$5;

    invoke-direct {v4, p0, v2}, Lio/socket/client/Manager$1$5;-><init>(Lio/socket/client/Manager$1;Ljava/util/Timer;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_d6
    iget-object v2, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v2}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->access$900(Lio/socket/client/Manager;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lio/socket/client/Manager$1;->this$0:Lio/socket/client/Manager;

    iget-object v0, v0, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    invoke-virtual {v0}, Lio/socket/engineio/client/Socket;->open()Lio/socket/engineio/client/Socket;

    :cond_ef
    :goto_ef
    return-void
.end method
