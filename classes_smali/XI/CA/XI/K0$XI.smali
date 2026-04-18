.class public final LXI/CA/XI/K0$XI;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LXI/CA/XI/K0;->XI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_49

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "appid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1
    :try_start_1a
    sget-object v1, LXI/CA/XI/K0;->CV:LXI/CA/XI/XI;

    .line 2
    invoke-virtual {v1, v0, p1}, LXI/CA/XI/XI;->XI(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    goto :goto_3a

    :cond_29
    if-eqz p1, :cond_3a

    .line 3
    sput-object p1, LXI/CA/XI/K0;->cs:Ljava/lang/String;

    goto :goto_3a

    :cond_2e
    if-eqz p1, :cond_3a

    .line 4
    sput-object p1, LXI/CA/XI/K0;->bs:Ljava/lang/String;

    goto :goto_3a

    .line 5
    :cond_33
    sput-object p1, LXI/CA/XI/K0;->WI:Ljava/lang/String;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    :cond_3a
    :goto_3a
    sget-object p1, LXI/CA/XI/K0;->XI:Landroid/content/Context;

    sget-object p1, LXI/CA/XI/K0;->vs:Ljava/lang/Object;

    monitor-enter p1

    sget-object v0, LXI/CA/XI/K0;->vs:Ljava/lang/Object;

    :try_start_41
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    goto :goto_49

    :catchall_46
    move-exception v0

    monitor-exit p1
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    :goto_49
    return-void
.end method
