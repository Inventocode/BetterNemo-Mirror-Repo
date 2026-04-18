.class Lio/socket/client/Manager$11$1$1;
.super Ljava/lang/Object;
.source "Manager.java"

# interfaces
.implements Lio/socket/client/Manager$OpenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager$11$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/socket/client/Manager$11$1;


# direct methods
.method constructor <init>(Lio/socket/client/Manager$11$1;)V
    .registers 2

    .line 596
    iput-object p1, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Exception;)V
    .registers 5

    if-eqz p1, :cond_2f

    .line 600
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "reconnect attempt error"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v0, v0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/socket/client/Manager;->access$2202(Lio/socket/client/Manager;Z)Z

    .line 602
    iget-object v0, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v0, v0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {v0}, Lio/socket/client/Manager;->access$2300(Lio/socket/client/Manager;)V

    .line 603
    iget-object v0, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object v0, v0, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object v0, v0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "reconnect_error"

    invoke-static {v0, p1, v2}, Lio/socket/client/Manager;->access$600(Lio/socket/client/Manager;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_41

    .line 605
    :cond_2f
    invoke-static {}, Lio/socket/client/Manager;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    const-string v0, "reconnect success"

    invoke-virtual {p1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 606
    iget-object p1, p0, Lio/socket/client/Manager$11$1$1;->this$2:Lio/socket/client/Manager$11$1;

    iget-object p1, p1, Lio/socket/client/Manager$11$1;->this$1:Lio/socket/client/Manager$11;

    iget-object p1, p1, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-static {p1}, Lio/socket/client/Manager;->access$2400(Lio/socket/client/Manager;)V

    :goto_41
    return-void
.end method
