.class public Lcom/tencent/smtt/utils/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v1, v2, :cond_14

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v1

    const-string v2, "disable_get_apk_version_switch.txt"

    invoke-virtual {v1, p0, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    invoke-static {p0, p1, v1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;Z)I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    const-string p0, "ApkUtil"

    const-string p1, "getApkVersion Failed"

    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_21
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Z)I
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7f

    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7f

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tbs.org"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "x5.tbs.decouple"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v2, :cond_22

    if-eqz v3, :cond_41

    :cond_22
    invoke-static {v3, p1}, Lcom/tencent/smtt/utils/a;->a(ZLjava/io/File;)I

    move-result v2

    if-lez v2, :cond_29

    return v2

    :cond_29
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_30

    goto :goto_41

    :cond_30
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    return v1

    :cond_41
    :goto_41
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-eq v2, v3, :cond_4b

    const/16 v3, 0x19

    if-ne v2, v3, :cond_5b

    :cond_4b
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    goto :goto_5c

    :cond_5b
    const/4 v2, 0x0

    :goto_5c
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsPVConfig;->releaseInstance()V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getReadApk()I

    move-result v3

    if-ne v3, v0, :cond_6c

    const/4 p2, 0x0

    const/4 v2, 0x0

    goto :goto_70

    :cond_6c
    const/4 v4, 0x2

    if-ne v3, v4, :cond_70

    return v1

    :cond_70
    :goto_70
    if-nez p2, :cond_74

    if-eqz v2, :cond_7f

    :cond_74
    invoke-static {p1}, Lcom/tencent/smtt/utils/a;->b(Ljava/io/File;)I

    move-result p2
    :try_end_78
    .catchall {:try_start_4 .. :try_end_78} :catchall_7b

    if-lez p2, :cond_7f

    return p2

    :catchall_7b
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7f
    if-eqz p1, :cond_9f

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_9f

    :try_start_87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_9f

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_97
    .catchall {:try_start_87 .. :try_end_97} :catchall_99

    move v1, p0

    goto :goto_9f

    :catchall_99
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, -0x1

    return p0

    :cond_9f
    :goto_9f
    return v1
.end method

.method private static a(ZLjava/io/File;)I
    .registers 6

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5f

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/tencent/smtt/utils/a;->a(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "(.*)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_25
    if-ge v1, v0, :cond_5f

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5c

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5f

    return p0

    :cond_5c
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :catch_5f
    :cond_5f
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/16 v0, 0x10

    new-array v1, v0, [C

    fill-array-data v1, :array_74

    const/16 v2, 0x20

    new-array v2, v2, [C

    const/4 v3, 0x0

    :try_start_c
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_17} :catch_57
    .catchall {:try_start_c .. :try_end_17} :catchall_55

    const/16 p0, 0x2000

    :try_start_19
    new-array p0, p0, [B

    :goto_1b
    invoke-virtual {v5, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v6, v7, :cond_27

    invoke-virtual {v4, p0, v8, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1b

    :cond_27
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/4 v4, 0x0

    :goto_2c
    if-ge v8, v0, :cond_45

    aget-byte v6, p0, v8

    add-int/lit8 v7, v4, 0x1

    ushr-int/lit8 v9, v6, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-char v9, v1, v9

    aput-char v9, v2, v4

    add-int/lit8 v4, v7, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v1, v6

    aput-char v6, v2, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2c

    :cond_45
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_4a} :catch_53
    .catchall {:try_start_19 .. :try_end_4a} :catchall_67

    :try_start_4a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_52

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_52
    return-object p0

    :catch_53
    move-exception p0

    goto :goto_59

    :catchall_55
    move-exception p0

    goto :goto_69

    :catch_57
    move-exception p0

    move-object v5, v3

    :goto_59
    :try_start_59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_67

    if-eqz v5, :cond_66

    :try_start_5e
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    goto :goto_66

    :catch_62
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_66
    :goto_66
    return-object v3

    :catchall_67
    move-exception p0

    move-object v3, v5

    :goto_69
    if-eqz v3, :cond_73

    :try_start_6b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    goto :goto_73

    :catch_6f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_73
    :goto_73
    throw p0

    :array_74
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static final a(Z)Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/tencent/smtt/utils/b;->d()Z

    move-result v0

    if-eqz v0, :cond_e

    if-eqz p0, :cond_b

    const-string p0, "x5.64.decouple.backup"

    return-object p0

    :cond_b
    const-string p0, "x5.64.backup"

    return-object p0

    :cond_e
    if-eqz p0, :cond_13

    const-string p0, "x5.decouple.backup"

    return-object p0

    :cond_13
    const-string p0, "x5.backup"

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;JI)Z
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2f

    :cond_a
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_19

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v3, p2, v1

    if-eqz v3, :cond_19

    return v0

    :cond_19
    :try_start_19
    invoke-static {p0, p1}, Lcom/tencent/smtt/utils/a;->a(Landroid/content/Context;Ljava/io/File;)I

    move-result p2

    if-eq p4, p2, :cond_20

    return v0

    :cond_20
    const/4 p2, 0x1

    invoke-static {p0, p2, p1}, Lcom/tencent/smtt/utils/b;->a(Landroid/content/Context;ZLjava/io/File;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "3082023f308201a8a00302010202044c46914a300d06092a864886f70d01010505003064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f301e170d3130303732313036313835305a170d3430303731333036313835305a3064310b30090603550406130238363110300e060355040813074265696a696e673110300e060355040713074265696a696e673110300e060355040a130754656e63656e74310c300a060355040b13035753443111300f0603550403130873616d75656c6d6f30819f300d06092a864886f70d010101050003818d0030818902818100c209077044bd0d63ea00ede5b839914cabcc912a87f0f8b390877e0f7a2583f0d5933443c40431c35a4433bc4c965800141961adc44c9625b1d321385221fd097e5bdc2f44a1840d643ab59dc070cf6c4b4b4d98bed5cbb8046e0a7078ae134da107cdf2bfc9b440fe5cb2f7549b44b73202cc6f7c2c55b8cfb0d333a021f01f0203010001300d06092a864886f70d010105050003818100b007db9922774ef4ccfee81ba514a8d57c410257e7a2eba64bfa17c9e690da08106d32f637ac41fbc9f205176c71bde238c872c3ee2f8313502bee44c80288ea4ef377a6f2cdfe4d3653c145c4acfedbfbadea23b559d41980cc3cdd35d79a68240693739aabf5c5ed26148756cf88264226de394c8a24ac35b712b120d4d23a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_2b} :catch_2f

    if-nez p0, :cond_2e

    return v0

    :cond_2e
    return p2

    :catch_2f
    :cond_2f
    :goto_2f
    return v0
.end method

.method public static b(Ljava/io/File;)I
    .registers 7

    const-class v0, Lcom/tencent/smtt/utils/a;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    new-instance v2, Ljava/util/jar/JarFile;

    invoke-direct {v2, p0}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_62
    .catchall {:try_start_4 .. :try_end_9} :catchall_5d

    :try_start_9
    const-string p0, "assets/webkit/tbs.conf"

    invoke-virtual {v2, p0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p0, Ljava/io/BufferedReader;

    invoke-direct {p0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1d} :catch_58
    .catchall {:try_start_9 .. :try_end_1d} :catchall_53

    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4a

    const-string v3, "tbs_core_version"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1d

    array-length v3, v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_42} :catch_51
    .catchall {:try_start_1d .. :try_end_42} :catchall_77

    :try_start_42
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_48} :catch_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_6f

    :catch_48
    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_6f

    return v1

    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :goto_4d
    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_50} :catch_74
    .catchall {:try_start_4a .. :try_end_50} :catchall_6f

    goto :goto_74

    :catch_51
    move-exception v1

    goto :goto_66

    :catchall_53
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_78

    :catch_58
    move-exception p0

    move-object v5, v1

    move-object v1, p0

    move-object p0, v5

    goto :goto_66

    :catchall_5d
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    goto :goto_78

    :catch_62
    move-exception p0

    move-object v2, v1

    move-object v1, p0

    move-object p0, v2

    :goto_66
    :try_start_66
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_77

    if-eqz p0, :cond_71

    :try_start_6b
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_74
    .catchall {:try_start_6b .. :try_end_6e} :catchall_6f

    goto :goto_71

    :catchall_6f
    move-exception p0

    goto :goto_83

    :cond_71
    :goto_71
    if-eqz v2, :cond_74

    goto :goto_4d

    :catch_74
    :cond_74
    :goto_74
    const/4 p0, -0x1

    :try_start_75
    monitor-exit v0
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_6f

    return p0

    :catchall_77
    move-exception v1

    :goto_78
    if-eqz p0, :cond_7d

    :try_start_7a
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    :cond_7d
    if-eqz v2, :cond_82

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->close()V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_82} :catch_82
    .catchall {:try_start_7a .. :try_end_82} :catchall_6f

    :catch_82
    :cond_82
    :try_start_82
    throw v1

    :goto_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_82 .. :try_end_84} :catchall_6f

    throw p0
.end method
