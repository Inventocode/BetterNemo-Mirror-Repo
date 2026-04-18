.class Lio/socket/engineio/client/transports/PollingXHR$5$1;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR$5;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

.field final synthetic val$args:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR$5;[Ljava/lang/Object;)V
    .registers 3

    .line 120
    iput-object p1, p0, Lio/socket/engineio/client/transports/PollingXHR$5$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

    iput-object p2, p0, Lio/socket/engineio/client/transports/PollingXHR$5$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 123
    iget-object v0, p0, Lio/socket/engineio/client/transports/PollingXHR$5$1;->val$args:[Ljava/lang/Object;

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 124
    :goto_a
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 125
    iget-object v1, p0, Lio/socket/engineio/client/transports/PollingXHR$5$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$5;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lio/socket/engineio/client/transports/Polling;->onData(Ljava/lang/String;)V

    goto :goto_25

    .line 126
    :cond_18
    instance-of v1, v0, [B

    if-eqz v1, :cond_25

    .line 127
    iget-object v1, p0, Lio/socket/engineio/client/transports/PollingXHR$5$1;->this$1:Lio/socket/engineio/client/transports/PollingXHR$5;

    iget-object v1, v1, Lio/socket/engineio/client/transports/PollingXHR$5;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lio/socket/engineio/client/transports/Polling;->onData([B)V

    :cond_25
    :goto_25
    return-void
.end method
