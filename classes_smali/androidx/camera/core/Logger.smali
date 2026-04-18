.class public final Landroidx/camera/core/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static sMinLogLevel:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 147
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 148
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 149
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 159
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    .line 160
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 161
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 216
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 217
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 218
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 228
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x6

    .line 229
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 230
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 170
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x4

    .line 171
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 172
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public static isDebugEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 109
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private static isLogLevelEnabled(Ljava/lang/String;I)Z
    .registers 3

    .line 76
    sget v0, Landroidx/camera/core/Logger;->sMinLogLevel:I

    if-le v0, p1, :cond_d

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method static resetMinLogLevel()V
    .registers 1

    const/4 v0, 0x3

    .line 99
    sput v0, Landroidx/camera/core/Logger;->sMinLogLevel:I

    return-void
.end method

.method static setMinLogLevel(I)V
    .registers 1

    .line 84
    sput p0, Landroidx/camera/core/Logger;->sMinLogLevel:I

    return-void
.end method

.method private static truncateTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 241
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-gt v0, v1, :cond_13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-ge v1, v0, :cond_13

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_13
    return-object p0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 193
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 194
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 195
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 205
    invoke-static {p0}, Landroidx/camera/core/Logger;->truncateTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 206
    invoke-static {p0, v0}, Landroidx/camera/core/Logger;->isLogLevelEnabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 207
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_e
    return-void
.end method
