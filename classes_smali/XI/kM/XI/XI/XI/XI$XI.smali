.class public final LXI/kM/XI/XI/XI/XI$XI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXI/kM/XI/XI/XI/XI;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic K0:LXI/kM/XI/XI/XI/XI;

.field public final synthetic XI:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(LXI/kM/XI/XI/XI/XI;Landroid/os/IBinder;)V
    .registers 3

    iput-object p1, p0, LXI/kM/XI/XI/XI/XI$XI;->K0:LXI/kM/XI/XI/XI/XI;

    iput-object p2, p0, LXI/kM/XI/XI/XI/XI$XI;->XI:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, LXI/kM/XI/XI/XI/XI$XI;->K0:LXI/kM/XI/XI/XI/XI;

    .line 1
    iget-object v0, v0, LXI/kM/XI/XI/XI/XI;->K0:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    iget-object v1, p0, LXI/kM/XI/XI/XI/XI$XI;->XI:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_c

    :catchall_c
    return-void
.end method
