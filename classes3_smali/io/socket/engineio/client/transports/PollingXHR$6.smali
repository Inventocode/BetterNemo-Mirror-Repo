.class Lio/socket/engineio/client/transports/PollingXHR$6;
.super Ljava/lang/Object;
.source "PollingXHR.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/transports/PollingXHR;->doPoll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$self:Lio/socket/engineio/client/transports/PollingXHR;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/transports/PollingXHR;Lio/socket/engineio/client/transports/PollingXHR;)V
    .registers 3

    .line 133
    iput-object p2, p0, Lio/socket/engineio/client/transports/PollingXHR$6;->val$self:Lio/socket/engineio/client/transports/PollingXHR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .registers 3

    .line 136
    new-instance v0, Lio/socket/engineio/client/transports/PollingXHR$6$1;

    invoke-direct {v0, p0, p1}, Lio/socket/engineio/client/transports/PollingXHR$6$1;-><init>(Lio/socket/engineio/client/transports/PollingXHR$6;[Ljava/lang/Object;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method
