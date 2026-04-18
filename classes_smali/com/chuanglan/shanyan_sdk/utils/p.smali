.class public Lcom/chuanglan/shanyan_sdk/utils/p;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String; = "02:00:00:00:00:00"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private static a()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/net/wlan0/address"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_38
    .catchall {:try_start_1 .. :try_end_d} :catchall_33

    :try_start_d
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_2e
    .catchall {:try_start_d .. :try_end_12} :catchall_29

    :try_start_12
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_27
    .catchall {:try_start_12 .. :try_end_16} :catchall_56

    :try_start_16
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_1e
    :try_start_1e
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_22

    goto :goto_55

    :catch_22
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_55

    :catch_27
    move-exception v0

    goto :goto_3c

    :catchall_29
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_57

    :catch_2e
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_3c

    :catchall_33
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    goto :goto_57

    :catch_38
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    move-object v1, v2

    :goto_3c
    :try_start_3c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_56

    if-eqz v2, :cond_49

    :try_start_41
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_49
    :goto_49
    if-eqz v1, :cond_53

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_53
    :goto_53
    const-string v0, "02:00:00:00:00:00"

    :goto_55
    return-object v0

    :catchall_56
    move-exception v0

    :goto_57
    if-eqz v2, :cond_61

    :try_start_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_61
    :goto_61
    if-eqz v1, :cond_6b

    :try_start_63
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67

    goto :goto_6b

    :catch_67
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6b
    :goto_6b
    throw v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/p;->a:Ljava/lang/String;

    const-string v1, "02:00:00:00:00:00"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    :try_start_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_17

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/p;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_14
    sput-object p0, Lcom/chuanglan/shanyan_sdk/utils/p;->a:Ljava/lang/String;

    goto :goto_29

    :cond_17
    const/16 p0, 0x18

    if-lt v0, v1, :cond_22

    if-ge v0, p0, :cond_22

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/p;->a()Ljava/lang/String;

    move-result-object p0

    goto :goto_14

    :cond_22
    if-lt v0, p0, :cond_29

    invoke-static {}, Lcom/chuanglan/shanyan_sdk/utils/p;->b()Ljava/lang/String;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_28} :catch_29

    goto :goto_14

    :catch_29
    :cond_29
    :goto_29
    sget-object p0, Lcom/chuanglan/shanyan_sdk/utils/p;->a:Ljava/lang/String;

    return-object p0
.end method

.method private static b()Ljava/lang/String;
    .registers 8

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "wlan0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_c

    :cond_25
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    if-nez v0, :cond_2e

    const-string v0, ""

    return-object v0

    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_36
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4f

    aget-byte v6, v0, v4

    const-string v7, "%02X:"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_36

    :cond_4f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5d

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_61} :catch_62

    return-object v0

    :catch_62
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_66
    const-string v0, "02:00:00:00:00:00"

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    const-string v0, "02:00:00:00:00:00"

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_14

    return-object v0

    :cond_14
    const/4 v0, 0x0

    :try_start_15
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1a

    goto :goto_1f

    :catch_1a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p0, v0

    :goto_1f
    if-nez p0, :cond_22

    return-object v0

    :cond_22
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/chuanglan/shanyan_sdk/utils/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_32
    return-object p0
.end method
