.class Lio/socket/client/Manager$10;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/parser/Parser$Encoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->packet(Lio/socket/parser/Packet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$self:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;Lio/socket/client/Manager;)V
    .registers 3

    .line 496
    iput-object p2, p0, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call([Ljava/lang/Object;)V
    .registers 7

    .line 499
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_25

    aget-object v3, p1, v2

    .line 500
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 501
    iget-object v4, p0, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    iget-object v4, v4, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Lio/socket/engineio/client/Socket;->write(Ljava/lang/String;)V

    goto :goto_22

    .line 502
    :cond_15
    instance-of v4, v3, [B

    if-eqz v4, :cond_22

    .line 503
    iget-object v4, p0, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    iget-object v4, v4, Lio/socket/client/Manager;->engine:Lio/socket/engineio/client/Socket;

    check-cast v3, [B

    invoke-virtual {v4, v3}, Lio/socket/engineio/client/Socket;->write([B)V

    :cond_22
    :goto_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 506
    :cond_25
    iget-object p1, p0, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    invoke-static {p1, v1}, Lio/socket/client/Manager;->access$1902(Lio/socket/client/Manager;Z)Z

    .line 507
    iget-object p1, p0, Lio/socket/client/Manager$10;->val$self:Lio/socket/client/Manager;

    invoke-static {p1}, Lio/socket/client/Manager;->access$2000(Lio/socket/client/Manager;)V

    return-void
.end method
