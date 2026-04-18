.class public abstract Lcom/zui/deviceidservice/IDeviceidInterface$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/zui/deviceidservice/IDeviceidInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/deviceidservice/IDeviceidInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/zui/deviceidservice/IDeviceidInterface;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "com.zui.deviceidservice.IDeviceidInterface"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/zui/deviceidservice/IDeviceidInterface;

    if-eqz v1, :cond_13

    check-cast v0, Lcom/zui/deviceidservice/IDeviceidInterface;

    return-object v0

    :cond_13
    new-instance v0, Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/zui/deviceidservice/IDeviceidInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
