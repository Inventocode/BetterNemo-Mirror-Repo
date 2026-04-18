.class Lio/socket/engineio/client/Socket$15$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/engineio/client/Socket$15;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$15;)V
    .registers 2

    .line 610
    iput-object p1, p0, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 613
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 614
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v3}, Lio/socket/engineio/client/Socket;->access$1500(Lio/socket/engineio/client/Socket;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "writing ping packet - expecting pong within %sms"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 616
    :cond_2b
    iget-object v0, p0, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->access$1600(Lio/socket/engineio/client/Socket;)V

    .line 617
    iget-object v0, p0, Lio/socket/engineio/client/Socket$15$1;->this$1:Lio/socket/engineio/client/Socket$15;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$15;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->access$1500(Lio/socket/engineio/client/Socket;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lio/socket/engineio/client/Socket;->access$000(Lio/socket/engineio/client/Socket;J)V

    return-void
.end method
