.class public Lcom/geetest/sdk/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "goldfish"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/utils/a;->a:[Ljava/lang/String;

    const-string v0, "/dev/socket/qemud"

    const-string v1, "/dev/qemu_pipe"

    .line 35
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/geetest/sdk/utils/a;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 7

    const/4 p0, 0x0

    .line 1
    :try_start_1
    invoke-static {}, Lcom/geetest/sdk/utils/a;->c()Z

    move-result v0

    .line 2
    invoke-static {}, Lcom/geetest/sdk/utils/a;->a()Z

    move-result v1

    const-string v2, "/proc/tty/drivers"

    .line 3
    invoke-static {v2}, Lcom/geetest/sdk/utils/a;->a(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1d

    const-string v2, "/proc/cpuinfo"

    invoke-static {v2}, Lcom/geetest/sdk/utils/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v2, 0x1

    .line 4
    :goto_1e
    invoke-static {}, Lcom/geetest/sdk/utils/a;->d()Z

    move-result v4

    .line 6
    invoke-static {}, Lcom/geetest/sdk/utils/a;->b()Z

    move-result v5
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_32

    if-nez v5, :cond_30

    if-nez v0, :cond_30

    if-nez v1, :cond_30

    if-nez v2, :cond_30

    if-eqz v4, :cond_31

    :cond_30
    const/4 p0, 0x1

    :cond_31
    return p0

    :catch_32
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return p0
.end method

.method private static a()Z
    .registers 6

    .line 25
    sget-object v0, Lcom/geetest/sdk/utils/a;->b:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_19

    aget-object v4, v0, v3

    .line 26
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v0, 0x1

    return v0

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_19
    return v2
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 6

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_39

    const/16 p0, 0x400

    new-array p0, p0, [B

    .line 16
    :try_start_16
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 17
    invoke-virtual {v2, p0}, Ljava/io/InputStream;->read([B)I

    .line 18
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_21} :catch_21

    .line 22
    :catch_21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 23
    sget-object p0, Lcom/geetest/sdk/utils/a;->a:[Ljava/lang/String;

    array-length v2, p0

    const/4 v3, 0x0

    :goto_2a
    if-ge v3, v2, :cond_39

    aget-object v4, p0, v3

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 p0, 0x1

    return p0

    :cond_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_39
    return v1
.end method

.method public static b()Z
    .registers 3

    const-string v0, "ro.product.cpu.abi"

    .line 1
    invoke-static {v0}, Lcom/geetest/sdk/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x86"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    return v2

    :cond_10
    const-string v0, "ro.product.cpu.abilist"

    .line 5
    invoke-static {v0}, Lcom/geetest/sdk/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    .line 9
    :cond_1d
    invoke-static {}, Lcom/geetest/sdk/utils/c;->a()Lcom/geetest/sdk/utils/c;

    move-result-object v0

    const-string v1, "uname -m"

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/utils/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "i686"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    return v2

    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private static c()Z
    .registers 8

    .line 1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_108

    const-string v1, "sdk_x86"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_108

    const-string v1, "sdk_google"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_108

    const-string v1, "Andy"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    const-string v3, "Droid4X"

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_108

    const-string v4, "nox"

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_108

    const-string v5, "vbox86p"

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    goto/16 :goto_108

    .line 9
    :cond_3d
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v6, "Genymotion"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_108

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_108

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_108

    const-string v6, "TiantianVM"

    .line 12
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto/16 :goto_108

    .line 14
    :cond_5d
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    return v2

    .line 16
    :cond_66
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 18
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 19
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_82

    goto/16 :goto_108

    .line 21
    :cond_82
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v7, "Emulator"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_108

    const-string v7, "google_sdk"

    .line 22
    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_108

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 24
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    const-string v3, "Android SDK built for x86_64"

    .line 26
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    const-string v3, "Android SDK built for x86"

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b7

    goto :goto_108

    .line 29
    :cond_b7
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v3, "vbox86"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 30
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    const-string v3, "ttVM_x86"

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d0

    goto :goto_108

    .line 34
    :cond_d0
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "generic/sdk/generic"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    const-string v3, "generic_x86/sdk_x86/generic_x86"

    .line 35
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_108

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_108

    const-string v1, "ttVM_Hdragon"

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_108

    const-string v1, "generic/google_sdk/generic"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_108

    .line 39
    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_108

    const-string v1, "generic/vbox86p/vbox86p"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_107

    goto :goto_108

    :cond_107
    const/4 v2, 0x0

    :cond_108
    :goto_108
    return v2
.end method

.method private static d()Z
    .registers 5

    :try_start_0
    const-string v0, "/system/bin/cat"

    const-string v1, "/proc/cpuinfo"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/ProcessBuilder;

    invoke-direct {v1, v0}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const-string v4, "utf-8"

    invoke-direct {v3, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 8
    :goto_26
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 11
    :cond_30
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_3e

    :catch_3c
    const-string v0, "$unknown"

    :goto_3e
    const-string v1, "intel"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    const-string v1, "amd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    goto :goto_51

    :cond_4f
    const/4 v0, 0x0

    goto :goto_52

    :cond_51
    :goto_51
    const/4 v0, 0x1

    :goto_52
    return v0
.end method
