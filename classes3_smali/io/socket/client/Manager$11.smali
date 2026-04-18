.class Lio/socket/client/Manager$11;
.super Ljava/util/TimerTask;
.source "Manager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/client/Manager;->reconnect()V
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

    .line 580
    iput-object p2, p0, Lio/socket/client/Manager$11;->val$self:Lio/socket/client/Manager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 583
    new-instance v0, Lio/socket/client/Manager$11$1;

    invoke-direct {v0, p0}, Lio/socket/client/Manager$11$1;-><init>(Lio/socket/client/Manager$11;)V

    invoke-static {v0}, Lio/socket/thread/EventThread;->exec(Ljava/lang/Runnable;)V

    return-void
.end method
