.class public Lcom/qiniu/android/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static isDebug:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static calculateSpeed(Ljava/lang/Long;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 7

    if-eqz p0, :cond_29

    .line 91
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_17

    goto :goto_29

    .line 94
    :cond_17
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    div-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_29
    :goto_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static currentTimestamp()J
    .registers 2

    .line 72
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static dateDuration(Ljava/util/Date;Ljava/util/Date;)J
    .registers 4

    if-eqz p0, :cond_e

    if-eqz p1, :cond_e

    .line 78
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    sub-long/2addr v0, p0

    return-wide v0

    :cond_e
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static formEscape(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 111
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\""

    const-string v1, "\\\""

    .line 112
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentNetworkType()Ljava/lang/String;
    .registers 1

    .line 63
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, ""

    return-object v0

    .line 67
    :cond_9
    invoke-static {v0}, Lcom/qiniu/android/utils/AndroidNetwork;->networkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentProcessID()Ljava/lang/Integer;
    .registers 1

    .line 42
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentSignalStrength()Ljava/lang/Integer;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCurrentThreadID()Ljava/lang/Long;
    .registers 2

    .line 46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method private static getIPV4StringType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    const/4 v0, 0x0

    const-string v1, "\\."

    .line 143
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 144
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_6e

    const/4 v1, 0x0

    .line 145
    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x7f

    if-lez v1, :cond_2e

    if-ge v1, v2, :cond_2e

    .line 147
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ipv4-A-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :cond_2e
    const/4 v3, 0x1

    const/16 v4, 0xbf

    if-le v1, v2, :cond_4c

    if-gt v1, v4, :cond_4c

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipv4-B-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6e

    :cond_4c
    if-le v1, v4, :cond_6e

    const/16 v2, 0xdf

    if-gt v1, v2, :cond_6e

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ipv4-C-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_6e
    :goto_6e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIPV6StringType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string v0, ""

    if-nez p1, :cond_5

    move-object p1, v0

    :cond_5
    const-string v1, ":"

    .line 163
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-string v1, "0000"

    const-string v2, "0000"

    const-string v3, "0000"

    const-string v4, "0000"

    const-string v5, "0000"

    const-string v6, "0000"

    const-string v7, "0000"

    const-string v8, "0000"

    .line 164
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "0000"

    const-string v3, "000"

    const-string v4, "00"

    const-string v5, "0"

    .line 165
    filled-new-array {v2, v3, v4, v5, v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 167
    :goto_2d
    array-length v4, p0

    if-ge v3, v4, :cond_52

    .line 168
    aget-object v4, p0, v3

    .line 169
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_52

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 171
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 178
    :cond_52
    array-length v4, p0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x7

    :goto_56
    if-ge v3, v4, :cond_7c

    .line 181
    aget-object v6, p0, v4

    .line 182
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7c

    .line 183
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    aget-object v8, v0, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 184
    aput-object v6, v1, v5

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_56

    :cond_7c
    const/4 p0, 0x4

    .line 191
    invoke-static {v1, v2, p0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const-string v0, "-"

    .line 192
    invoke-static {p0, v0}, Lcom/qiniu/android/utils/StringUtils;->join([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-ipv6-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIpType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_22

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_22

    :cond_9
    const-string v0, ":"

    .line 121
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 122
    invoke-static {p0, p1}, Lcom/qiniu/android/utils/Utils;->getIPV6StringType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_22

    :cond_16
    const-string v0, "."

    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 124
    invoke-static {p0, p1}, Lcom/qiniu/android/utils/Utils;->getIPV4StringType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_22
    :goto_22
    return-object p1
.end method

.method public static isDebug()Z
    .registers 2

    .line 15
    sget-object v0, Lcom/qiniu/android/utils/Utils;->isDebug:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 16
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 19
    :cond_9
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 25
    :cond_11
    :try_start_11
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 26
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/qiniu/android/utils/Utils;->isDebug:Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_28} :catch_29

    return v0

    :catch_29
    return v1
.end method

.method public static isIpv6(Ljava/lang/String;)Z
    .registers 2

    .line 130
    invoke-static {p0}, Lcom/qiniu/android/utils/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 134
    :cond_8
    invoke-static {p0}, Lcom/qiniu/android/utils/IPAddressUtil;->isIPv6LiteralAddress(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static sdkDirectory()Ljava/lang/String;
    .registers 2

    .line 98
    invoke-static {}, Lcom/qiniu/android/utils/ContextGetter;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/qiniu"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sdkLanguage()Ljava/lang/String;
    .registers 1

    const-string v0, "Android"

    return-object v0
.end method

.method public static sdkVerion()Ljava/lang/String;
    .registers 1

    const-string v0, "8.3.3"

    return-object v0
.end method

.method public static systemName()Ljava/lang/String;
    .registers 1

    const-string v0, "os.name"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static systemVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "os.version"

    .line 55
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
