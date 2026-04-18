.class Lio/socket/client/Manager$2;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/emitter/Emitter$Listener;


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

    .line 369
    iput-object p1, p0, Lio/socket/client/Manager$2;->this$0:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs call([Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    .line 372
    aget-object p1, p1, v0

    .line 373
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 374
    iget-object v0, p0, Lio/socket/client/Manager$2;->this$0:Lio/socket/client/Manager;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lio/socket/client/Manager;->access$1000(Lio/socket/client/Manager;Ljava/lang/String;)V

    goto :goto_1a

    .line 375
    :cond_f
    instance-of v0, p1, [B

    if-eqz v0, :cond_1a

    .line 376
    iget-object v0, p0, Lio/socket/client/Manager$2;->this$0:Lio/socket/client/Manager;

    check-cast p1, [B

    invoke-static {v0, p1}, Lio/socket/client/Manager;->access$1100(Lio/socket/client/Manager;[B)V

    :cond_1a
    :goto_1a
    return-void
.end method
