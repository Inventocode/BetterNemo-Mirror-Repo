.class public final Lcom/ljwx/baseapp/event/ISendLocalEvent$DefaultImpls;
.super Ljava/lang/Object;
.source "ISendLocalEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ljwx/baseapp/event/ISendLocalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic sendLocalEvent$default(Lcom/ljwx/baseapp/event/ISendLocalEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 7

    if-nez p5, :cond_11

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_8

    move-object p2, v0

    :cond_8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_d

    move-object p3, v0

    .line 5
    :cond_d
    invoke-interface {p0, p1, p2, p3}, Lcom/ljwx/baseapp/event/ISendLocalEvent;->sendLocalEvent(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: sendLocalEvent"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
