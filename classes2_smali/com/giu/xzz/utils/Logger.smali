.class public Lcom/giu/xzz/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static sClassName:Ljava/lang/String; = null

.field private static sContent:Ljava/lang/String; = null

.field private static sLineNumber:I = 0x0

.field private static sMethodName:Ljava/lang/String; = null

.field private static show:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2

    const-string v0, "nemolog"

    .line 33
    invoke-static {v0, p0}, Lcom/giu/xzz/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 37
    sget-boolean v0, Lcom/giu/xzz/utils/Logger;->show:Z

    if-eqz v0, :cond_1b

    .line 38
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/Logger;->parseMessage([Ljava/lang/StackTraceElement;)V

    if-nez p0, :cond_14

    .line 39
    sget-object p0, Lcom/giu/xzz/utils/Logger;->sClassName:Ljava/lang/String;

    :cond_14
    invoke-static {p1}, Lcom/giu/xzz/utils/Logger;->packMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    const/4 v0, 0x0

    .line 67
    invoke-static {v0, p0}, Lcom/giu/xzz/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 71
    sget-boolean v0, Lcom/giu/xzz/utils/Logger;->show:Z

    if-eqz v0, :cond_1b

    .line 72
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/Logger;->parseMessage([Ljava/lang/StackTraceElement;)V

    if-nez p0, :cond_14

    .line 73
    sget-object p0, Lcom/giu/xzz/utils/Logger;->sClassName:Ljava/lang/String;

    :cond_14
    invoke-static {p1}, Lcom/giu/xzz/utils/Logger;->packMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    return-void
.end method

.method public static init(Z)V
    .registers 1

    .line 18
    sput-boolean p0, Lcom/giu/xzz/utils/Logger;->show:Z

    return-void
.end method

.method private static packMessage(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    sget-object v1, Lcom/giu/xzz/utils/Logger;->sMethodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lcom/giu/xzz/utils/Logger;->sContent:Ljava/lang/String;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lcom/giu/xzz/utils/Logger;->sLineNumber:I

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static parseMessage([Ljava/lang/StackTraceElement;)V
    .registers 3

    const/4 v0, 0x1

    .line 78
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/giu/xzz/utils/Logger;->sClassName:Ljava/lang/String;

    .line 79
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/giu/xzz/utils/Logger;->sContent:Ljava/lang/String;

    .line 80
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/giu/xzz/utils/Logger;->sMethodName:Ljava/lang/String;

    .line 81
    aget-object p0, p0, v0

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    sput p0, Lcom/giu/xzz/utils/Logger;->sLineNumber:I

    return-void
.end method
