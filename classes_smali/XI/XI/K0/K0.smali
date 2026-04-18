.class public LXI/XI/K0/K0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LXI/XI/K0/kM;


# instance fields
.field public K0:LXI/XI/XI/XI;

.field public XI:Landroid/content/Context;

.field public kM:LXI/XI/K0/xo;

.field public xo:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LXI/XI/K0/K0$XI;

    invoke-direct {v0, p0}, LXI/XI/K0/K0$XI;-><init>(LXI/XI/K0/K0;)V

    iput-object v0, p0, LXI/XI/K0/K0;->xo:Landroid/content/ServiceConnection;

    iput-object p1, p0, LXI/XI/K0/K0;->XI:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public XI()Z
    .registers 3

    iget-object v0, p0, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    if-eqz v0, :cond_10

    :try_start_4
    invoke-interface {v0}, LXI/XI/XI/XI;->isSupported()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_8} :catch_9

    goto :goto_11

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_10
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, LXI/XI/K0/K0;->K0:LXI/XI/XI/XI;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return v0
.end method
