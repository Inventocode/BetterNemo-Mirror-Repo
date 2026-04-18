.class Lio/socket/engineio/client/Socket$19;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Socket;->sendPacket(Lio/socket/engineio/parser/Packet;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fn:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Socket;Ljava/lang/Runnable;)V
    .registers 3

    .line 741
    iput-object p2, p0, Lio/socket/engineio/client/Socket$19;->val$fn:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .registers 2

    .line 744
    iget-object p1, p0, Lio/socket/engineio/client/Socket$19;->val$fn:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
