.class public final Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;
.super Ljava/lang/Object;
.source "RomUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;
    }
.end annotation


# static fields
.field private static bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static getBrand()Ljava/lang/String;
    .registers 2

    .line 135
    :try_start_0
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 136
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 137
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    :cond_d
    const-string v0, "unknown"

    return-object v0
.end method

.method private static getManufacturer()Ljava/lang/String;
    .registers 2

    .line 125
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 127
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    return-object v0

    :catchall_d
    :cond_d
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getRomInfo()Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;
    .registers 4

    .line 78
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    if-eqz v0, :cond_5

    return-object v0

    .line 79
    :cond_5
    new-instance v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    .line 80
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getBrand()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    const-string v2, "huawei"

    .line 82
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 83
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$002(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "ro.build.version.emui"

    .line 84
    invoke-static {v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 86
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_3d

    .line 87
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$102(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_42

    .line 89
    :cond_3d
    sget-object v1, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-static {v1, v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$102(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    :goto_42
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    return-object v0

    :cond_45
    const-string v2, "vivo"

    .line 93
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 94
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$002(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    const-string v1, "ro.vivo.os.build.display.id"

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$102(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    return-object v0

    :cond_64
    const-string v2, "xiaomi"

    .line 98
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 99
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$002(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    const-string v1, "ro.build.version.incremental"

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$102(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    return-object v0

    :cond_83
    const-string v2, "oppo"

    .line 103
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2

    .line 104
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$002(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    const-string v1, "ro.build.version.opporom"

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$102(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    return-object v0

    .line 108
    :cond_a2
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$002(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    const-string v1, ""

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$102(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    sget-object v0, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->bean:Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    return-object v0
.end method

.method private static getRomVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 146
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_d

    :cond_b
    const-string p0, ""

    .line 148
    :goto_d
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "unknown"

    if-nez v0, :cond_1b

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 150
    :cond_1b
    :try_start_1b
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_28

    goto :goto_29

    :catchall_28
    nop

    .line 156
    :cond_29
    :goto_29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    return-object v1

    :cond_30
    return-object p0
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 163
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    return-object v0

    .line 165
    :cond_b
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v0

    .line 167
    :cond_16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-ge v1, v2, :cond_21

    .line 168
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v0
.end method

.method private static getSystemPropertyByReflect(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .line 209
    const-class v0, Ljava/lang/String;

    const-string v1, ""

    :try_start_4
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    .line 210
    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v4, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v1, v3, v7

    .line 211
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    return-object v1
.end method

.method private static getSystemPropertyByShell(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 177
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    .line 178
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 p0, 0x400

    invoke-direct {v1, v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2a} :catch_44
    .catchall {:try_start_1 .. :try_end_2a} :catchall_3d

    .line 179
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2e} :catch_3b
    .catchall {:try_start_2a .. :try_end_2e} :catchall_38

    if-eqz p0, :cond_34

    .line 187
    :try_start_30
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_33

    :catch_33
    return-object p0

    :cond_34
    :try_start_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_4a

    goto :goto_4a

    :catchall_38
    move-exception p0

    move-object v0, v1

    goto :goto_3e

    :catch_3b
    move-object v0, v1

    goto :goto_45

    :catchall_3d
    move-exception p0

    :goto_3e
    if-eqz v0, :cond_43

    :try_start_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_43

    .line 190
    :catch_43
    :cond_43
    throw p0

    :catch_44
    nop

    :goto_45
    if-eqz v0, :cond_4a

    .line 187
    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4a

    :catch_4a
    :cond_4a
    :goto_4a
    const-string p0, ""

    return-object p0
.end method

.method private static getSystemPropertyByStream(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, ""

    .line 196
    :try_start_2
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 197
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    .line 198
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "build.prop"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 200
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 201
    invoke-virtual {v1, p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    return-object v0
.end method

.method public static isHuawei()Z
    .registers 2

    .line 42
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomInfo()Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$000(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "huawei"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isOppo()Z
    .registers 2

    .line 69
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomInfo()Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$000(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static varargs isRightRom(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8

    .line 115
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_19

    aget-object v3, p2, v2

    .line 116
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_17

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0

    :cond_19
    return v1
.end method

.method public static isVivo()Z
    .registers 2

    .line 51
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomInfo()Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$000(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vivo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isXiaomi()Z
    .registers 2

    .line 60
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils;->getRomInfo()Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;->access$000(Lcom/codemao/toolssdk/utils/notchscreen/RomUtils$RomInfo;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
