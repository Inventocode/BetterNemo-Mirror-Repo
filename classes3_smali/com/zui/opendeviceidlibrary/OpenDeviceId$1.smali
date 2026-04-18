.class public Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/opendeviceidlibrary/OpenDeviceId;->init(Landroid/content/Context;Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;


# direct methods
.method public constructor <init>(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V
    .registers 2

    iput-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-static {p2}, Lcom/zui/deviceidservice/IDeviceidInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zui/deviceidservice/IDeviceidInterface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->access$002(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;

    iget-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-static {p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->access$100(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    move-result-object p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    invoke-static {p1}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->access$100(Lcom/zui/opendeviceidlibrary/OpenDeviceId;)Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    const-string v0, "Deviceid Service Connected"

    invoke-interface {p1, v0, p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId$CallBack;->serviceConnected(Ljava/lang/Object;Lcom/zui/opendeviceidlibrary/OpenDeviceId;)V

    :cond_1f
    iget-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    const-string p2, "Service onServiceConnected"

    invoke-static {p1, p2}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->access$200(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    iget-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->access$002(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Lcom/zui/deviceidservice/IDeviceidInterface;)Lcom/zui/deviceidservice/IDeviceidInterface;

    iget-object p1, p0, Lcom/zui/opendeviceidlibrary/OpenDeviceId$1;->this$0:Lcom/zui/opendeviceidlibrary/OpenDeviceId;

    const-string v0, "Service onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/zui/opendeviceidlibrary/OpenDeviceId;->access$200(Lcom/zui/opendeviceidlibrary/OpenDeviceId;Ljava/lang/String;)V

    return-void
.end method
