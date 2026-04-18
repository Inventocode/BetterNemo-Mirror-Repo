.class public final Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase$DefaultImpls;
.super Ljava/lang/Object;
.source "IWoodToolsManagerBuilderBase.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic setToolsData$default(Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;
    .registers 14

    if-nez p7, :cond_1f

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_8

    const-string p3, "1"

    :cond_8
    move-object v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_f

    const-string p4, "123456"

    :cond_f
    move-object v4, p4

    and-int/lit8 p3, p6, 0x10

    if-eqz p3, :cond_16

    const-string p5, "normal"

    :cond_16
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 45
    invoke-interface/range {v0 .. v5}, Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;->setToolsData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/codemao/toolssdk/cpp/manager/builder/IWoodToolsManagerBuilderBase;

    move-result-object p0

    return-object p0

    :cond_1f
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setToolsData"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
