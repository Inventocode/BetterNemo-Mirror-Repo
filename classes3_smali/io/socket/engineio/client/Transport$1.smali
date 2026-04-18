.class Lio/socket/engineio/client/Transport$1;
.super Ljava/lang/Object;
.source "Transport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/client/Transport;->open()Lio/socket/engineio/client/Transport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/engineio/client/Transport;


# direct methods
.method constructor <init>(Lio/socket/engineio/client/Transport;)V
    .registers 2

    .line 69
    iput-object p1, p0, Lio/socket/engineio/client/Transport$1;->this$0:Lio/socket/engineio/client/Transport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 72
    iget-object v0, p0, Lio/socket/engineio/client/Transport$1;->this$0:Lio/socket/engineio/client/Transport;

    iget-object v1, v0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    sget-object v2, Lio/socket/engineio/client/Transport$ReadyState;->CLOSED:Lio/socket/engineio/client/Transport$ReadyState;

    if-eq v1, v2, :cond_a

    if-nez v1, :cond_11

    .line 73
    :cond_a
    sget-object v1, Lio/socket/engineio/client/Transport$ReadyState;->OPENING:Lio/socket/engineio/client/Transport$ReadyState;

    iput-object v1, v0, Lio/socket/engineio/client/Transport;->readyState:Lio/socket/engineio/client/Transport$ReadyState;

    .line 74
    invoke-virtual {v0}, Lio/socket/engineio/client/Transport;->doOpen()V

    :cond_11
    return-void
.end method
