.class Lio/socket/engineio/client/Socket$7$1$1;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket$7$1;->call([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/engineio/client/Socket$7$1;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket$7$1;)V
    .registers 2

    .line 390
    iput-object p1, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 393
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v1, v0, Lio/socket/engineio/client/Socket$7;->val$failed:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_c

    return-void

    .line 394
    :cond_c
    sget-object v1, Lio/socket/engineio/client/Socket$ReadyState;->CLOSED:Lio/socket/engineio/client/Socket$ReadyState;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->access$500(Lio/socket/engineio/client/Socket;)Lio/socket/engineio/client/Socket$ReadyState;

    move-result-object v0

    if-ne v1, v0, :cond_17

    return-void

    .line 396
    :cond_17
    invoke-static {}, Lio/socket/engineio/client/Socket;->access$1200()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "changing transport and sending upgrade packet"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$cleanup:[Ljava/lang/Runnable;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 400
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v1, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lio/socket/engineio/client/Socket;->access$700(Lio/socket/engineio/client/Socket;Lio/socket/engineio/client/Transport;)V

    .line 401
    new-instance v0, Lio/socket/engineio/parser/Packet;

    const-string v1, "upgrade"

    invoke-direct {v0, v1}, Lio/socket/engineio/parser/Packet;-><init>(Ljava/lang/String;)V

    .line 402
    iget-object v3, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v3, v3, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    new-array v5, v4, [Lio/socket/engineio/parser/Packet;

    aput-object v0, v5, v2

    invoke-virtual {v3, v5}, Lio/socket/engineio/client/Transport;->send([Lio/socket/engineio/parser/Packet;)V

    .line 403
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v3, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    aget-object v0, v0, v2

    aput-object v0, v4, v2

    invoke-virtual {v3, v1, v4}, Lio/socket/emitter/Emitter;->emit(Ljava/lang/String;[Ljava/lang/Object;)Lio/socket/emitter/Emitter;

    .line 404
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v1, v0, Lio/socket/engineio/client/Socket$7;->val$transport:[Lio/socket/engineio/client/Transport;

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 405
    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v0, v2}, Lio/socket/engineio/client/Socket;->access$1302(Lio/socket/engineio/client/Socket;Z)Z

    .line 406
    iget-object v0, p0, Lio/socket/engineio/client/Socket$7$1$1;->this$2:Lio/socket/engineio/client/Socket$7$1;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7$1;->this$1:Lio/socket/engineio/client/Socket$7;

    iget-object v0, v0, Lio/socket/engineio/client/Socket$7;->val$self:Lio/socket/engineio/client/Socket;

    invoke-static {v0}, Lio/socket/engineio/client/Socket;->access$1400(Lio/socket/engineio/client/Socket;)V

    return-void
.end method
