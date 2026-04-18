.class Lio/socket/client/Socket$2$3;
.super Ljava/lang/Object;
.source "Socket.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/socket/client/Socket$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/socket/client/Socket$2;


# direct methods
.method constructor <init>(Lio/socket/client/Socket$2;)V
    .registers 2

    .line 123
    iput-object p1, p0, Lio/socket/client/Socket$2$3;->this$1:Lio/socket/client/Socket$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lio/socket/client/Socket$2$3;->this$1:Lio/socket/client/Socket$2;

    iget-object v0, v0, Lio/socket/client/Socket$2;->this$0:Lio/socket/client/Socket;

    array-length v1, p1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    aget-object p1, p1, v1

    check-cast p1, Ljava/lang/String;

    goto :goto_e

    :cond_d
    const/4 p1, 0x0

    :goto_e
    invoke-static {v0, p1}, Lio/socket/client/Socket;->access$200(Lio/socket/client/Socket;Ljava/lang/String;)V

    return-void
.end method
