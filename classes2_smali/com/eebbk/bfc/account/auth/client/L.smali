.class public Lcom/eebbk/bfc/account/auth/client/L;
.super Ljava/lang/Object;
.source "L.java"


# static fields
.field static isDebug:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 21
    sget-boolean v0, Lcom/eebbk/bfc/account/auth/client/L;->isDebug:Z

    if-nez v0, :cond_5

    return-void

    .line 24
    :cond_5
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static setDebug(Z)V
    .registers 1

    .line 10
    sput-boolean p0, Lcom/eebbk/bfc/account/auth/client/L;->isDebug:Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
