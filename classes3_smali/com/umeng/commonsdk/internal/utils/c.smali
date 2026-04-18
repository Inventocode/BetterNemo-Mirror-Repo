.class public Lcom/umeng/commonsdk/internal/utils/c;
.super Ljava/lang/Object;
.source "CpuUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/internal/utils/c$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/umeng/commonsdk/internal/utils/c$a;
    .registers 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    :try_start_2
    new-instance v2, Lcom/umeng/commonsdk/internal/utils/c$a;

    invoke-direct {v2}, Lcom/umeng/commonsdk/internal/utils/c$a;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_133
    .catchall {:try_start_2 .. :try_end_7} :catchall_122

    .line 43
    :try_start_7
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/cpuinfo"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_120
    .catchall {:try_start_7 .. :try_end_e} :catchall_122

    .line 47
    :try_start_e
    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_11d
    .catchall {:try_start_e .. :try_end_13} :catchall_11a

    .line 51
    :try_start_13
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_11e
    .catchall {:try_start_13 .. :try_end_17} :catchall_118

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 55
    :goto_1b
    :try_start_1b
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_10e

    add-int/2addr v6, v5

    const/16 v9, 0x1e

    if-lt v6, v9, :cond_28

    goto/16 :goto_10e

    :cond_28
    const-string v9, ":\\s+"

    const/4 v10, 0x2

    .line 60
    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v7, :cond_3b

    if-eqz v0, :cond_3b

    .line 62
    array-length v9, v0

    if-le v9, v5, :cond_3b

    .line 63
    aget-object v7, v0, v5

    iput-object v7, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->a:Ljava/lang/String;

    const/4 v7, 0x0

    :cond_3b
    if-eqz v0, :cond_4c

    .line 66
    array-length v9, v0

    if-le v9, v5, :cond_4c

    aget-object v9, v0, v1

    const-string v10, "processor"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4c

    add-int/lit8 v8, v8, 0x1

    :cond_4c
    if-eqz v0, :cond_5f

    .line 69
    array-length v9, v0

    if-le v9, v5, :cond_5f

    aget-object v9, v0, v1

    const-string v10, "Features"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5f

    .line 70
    aget-object v9, v0, v5

    iput-object v9, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->d:Ljava/lang/String;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5f} :catch_115
    .catchall {:try_start_1b .. :try_end_5f} :catchall_118

    :cond_5f
    const-string v9, "implementer"

    if-eqz v0, :cond_72

    .line 72
    :try_start_63
    array-length v10, v0

    if-le v10, v5, :cond_72

    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_72

    .line 73
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->e:Ljava/lang/String;

    :cond_72
    if-eqz v0, :cond_85

    .line 76
    array-length v10, v0

    if-le v10, v5, :cond_85

    aget-object v10, v0, v1

    const-string v11, "architecture"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_85

    .line 77
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->f:Ljava/lang/String;

    :cond_85
    if-eqz v0, :cond_98

    .line 79
    array-length v10, v0

    if-le v10, v5, :cond_98

    aget-object v10, v0, v1

    const-string v11, "variant"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 80
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->g:Ljava/lang/String;

    :cond_98
    if-eqz v0, :cond_ab

    .line 82
    array-length v10, v0

    if-le v10, v5, :cond_ab

    aget-object v10, v0, v1

    const-string v11, "part"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 83
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->h:Ljava/lang/String;

    :cond_ab
    if-eqz v0, :cond_be

    .line 85
    array-length v10, v0

    if-le v10, v5, :cond_be

    aget-object v10, v0, v1

    const-string v11, "revision"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 86
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->i:Ljava/lang/String;

    :cond_be
    if-eqz v0, :cond_d1

    .line 88
    array-length v10, v0

    if-le v10, v5, :cond_d1

    aget-object v10, v0, v1

    const-string v11, "Hardware"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d1

    .line 89
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->j:Ljava/lang/String;

    :cond_d1
    if-eqz v0, :cond_e4

    .line 91
    array-length v10, v0

    if-le v10, v5, :cond_e4

    aget-object v10, v0, v1

    const-string v11, "Revision"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e4

    .line 92
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->k:Ljava/lang/String;

    :cond_e4
    if-eqz v0, :cond_f7

    .line 94
    array-length v10, v0

    if-le v10, v5, :cond_f7

    aget-object v10, v0, v1

    const-string v11, "Serial"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f7

    .line 95
    aget-object v10, v0, v5

    iput-object v10, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->l:Ljava/lang/String;

    :cond_f7
    if-eqz v0, :cond_108

    .line 97
    array-length v10, v0

    if-le v10, v5, :cond_108

    aget-object v10, v0, v1

    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_108

    .line 98
    aget-object v0, v0, v5

    iput-object v0, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->e:Ljava/lang/String;

    .line 100
    :cond_108
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_10c} :catch_115
    .catchall {:try_start_63 .. :try_end_10c} :catchall_118

    goto/16 :goto_1b

    .line 106
    :cond_10e
    :goto_10e
    :try_start_10e
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_111
    .catch Ljava/io/IOException; {:try_start_10e .. :try_end_111} :catch_111

    .line 113
    :catch_111
    :try_start_111
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_114
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_114} :catch_142

    goto :goto_142

    :catch_115
    move-object v0, v3

    move v1, v8

    goto :goto_135

    :catchall_118
    move-exception v0

    goto :goto_126

    :catchall_11a
    move-exception v1

    move-object v4, v0

    goto :goto_125

    :catch_11d
    move-object v4, v0

    :catch_11e
    move-object v0, v3

    goto :goto_135

    :catch_120
    move-object v4, v0

    goto :goto_135

    :catchall_122
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_125
    move-object v0, v1

    :goto_126
    if-eqz v3, :cond_12d

    .line 106
    :try_start_128
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_12b
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_12b} :catch_12c

    goto :goto_12d

    :catch_12c
    nop

    :cond_12d
    :goto_12d
    if-eqz v4, :cond_132

    .line 113
    :try_start_12f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_12f .. :try_end_132} :catch_132

    .line 116
    :catch_132
    :cond_132
    throw v0

    :catch_133
    move-object v2, v0

    move-object v4, v2

    :goto_135
    if-eqz v0, :cond_13c

    .line 106
    :try_start_137
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_13a
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13a} :catch_13b

    goto :goto_13c

    :catch_13b
    nop

    :cond_13c
    :goto_13c
    if-eqz v4, :cond_141

    .line 113
    :try_start_13e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_141
    .catch Ljava/io/IOException; {:try_start_13e .. :try_end_141} :catch_141

    :catch_141
    :cond_141
    move v8, v1

    .line 120
    :catch_142
    :goto_142
    iput v8, v2, Lcom/umeng/commonsdk/internal/utils/c$a;->c:I

    return-object v2
.end method

.method public static b()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    const-string v1, "/system/bin/cat"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 131
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 137
    :goto_1b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 140
    :cond_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3a

    .line 144
    :catch_3a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 5

    const-string v0, ""

    :try_start_2
    const-string v1, "/system/bin/cat"

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    .line 152
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Ljava/lang/ProcessBuilder;

    invoke-direct {v2, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v1

    .line 156
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x18

    new-array v2, v2, [B

    .line 158
    :goto_1b
    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_37

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 161
    :cond_37
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3a} :catch_3a

    .line 165
    :catch_3a
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 173
    :try_start_1
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 175
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_26
    .catchall {:try_start_1 .. :try_end_d} :catchall_1d

    .line 176
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_15} :catch_1b
    .catchall {:try_start_d .. :try_end_15} :catchall_19

    .line 183
    :try_start_15
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_2d

    goto :goto_2d

    :catchall_19
    move-exception v0

    goto :goto_20

    :catch_1b
    move-object v0, v2

    goto :goto_26

    :catchall_1d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_20
    if-eqz v2, :cond_25

    :try_start_22
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_25

    .line 187
    :catchall_25
    :cond_25
    throw v0

    :catch_26
    :goto_26
    if-eqz v0, :cond_2b

    .line 183
    :try_start_28
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2b

    :catchall_2b
    :cond_2b
    const-string v0, ""

    :catchall_2d
    :goto_2d
    return-object v0
.end method
