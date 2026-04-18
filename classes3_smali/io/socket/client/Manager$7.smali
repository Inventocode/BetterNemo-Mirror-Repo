.class Lio/socket/client/Manager$7;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/parser/Parser$Decoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->onopen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/socket/client/Manager;


# direct methods
.method constructor <init>(Lio/socket/client/Manager;)V
    .registers 2

    .line 404
    iput-object p1, p0, Lio/socket/client/Manager$7;->this$0:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lio/socket/parser/Packet;)V
    .registers 3

    .line 407
    iget-object v0, p0, Lio/socket/client/Manager$7;->this$0:Lio/socket/client/Manager;

    invoke-static {v0, p1}, Lio/socket/client/Manager;->access$1600(Lio/socket/client/Manager;Lio/socket/parser/Packet;)V

    return-void
.end method
