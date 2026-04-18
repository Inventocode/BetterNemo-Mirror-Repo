.class public final Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;
.super Ljava/lang/Object;
.source "ICppToolsManagerLoadWork.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 7

    if-nez p5, :cond_16

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_12

    move-object p3, v0

    .line 22
    :cond_12
    invoke-interface {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadUrl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .registers 13

    if-nez p11, :cond_35

    and-int/lit8 p11, p10, 0x1

    const/4 v0, 0x0

    if-eqz p11, :cond_8

    move-object p1, v0

    :cond_8
    and-int/lit8 p11, p10, 0x2

    if-eqz p11, :cond_d

    move-object p2, v0

    :cond_d
    and-int/lit8 p11, p10, 0x4

    if-eqz p11, :cond_12

    move-object p3, v0

    :cond_12
    and-int/lit8 p11, p10, 0x8

    if-eqz p11, :cond_17

    move-object p4, v0

    :cond_17
    and-int/lit8 p11, p10, 0x10

    if-eqz p11, :cond_1c

    const/4 p5, 0x0

    :cond_1c
    and-int/lit8 p11, p10, 0x20

    if-eqz p11, :cond_21

    move-object p6, v0

    :cond_21
    and-int/lit8 p11, p10, 0x40

    if-eqz p11, :cond_27

    .line 35
    sget-object p7, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    :cond_27
    and-int/lit16 p11, p10, 0x80

    if-eqz p11, :cond_2c

    move-object p8, v0

    :cond_2c
    and-int/lit16 p10, p10, 0x100

    if-eqz p10, :cond_31

    move-object p9, v0

    .line 28
    :cond_31
    invoke-interface/range {p0 .. p9}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_35
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: loadUrl"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
