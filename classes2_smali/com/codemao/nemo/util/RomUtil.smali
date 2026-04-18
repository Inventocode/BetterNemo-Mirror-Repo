.class public Lcom/codemao/nemo/util/RomUtil;
.super Ljava/lang/Object;
.source "RomUtil.java"


# static fields
.field private static sName:Ljava/lang/String;

.field private static sVersion:Ljava/lang/String;


# direct methods
.method public static check(Ljava/lang/String;)Z
    .registers 3

    .line 39
    sget-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_9
    const-string v0, "ro.miui.ui.version.name"

    .line 42
    invoke-static {v0}, Lcom/codemao/nemo/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_83

    const-string v0, "ro.build.version.emui"

    .line 45
    invoke-static {v0}, Lcom/codemao/nemo/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    const-string v0, "ro.build.version.opporom"

    .line 48
    invoke-static {v0}, Lcom/codemao/nemo/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "ro.vivo.os.version"

    .line 51
    invoke-static {v0}, Lcom/codemao/nemo/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_74

    const-string v0, "ro.smartisan.version"

    .line 54
    invoke-static {v0}, Lcom/codemao/nemo/util/RomUtil;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 57
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 58
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FLYME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_62

    .line 59
    sput-object v1, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_87

    :cond_62
    const-string v0, "unknown"

    .line 61
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sVersion:Ljava/lang/String;

    .line 62
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_87

    :cond_6f
    const-string v0, "SMARTISAN"

    .line 65
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_87

    :cond_74
    const-string v0, "VIVO"

    .line 68
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_87

    :cond_79
    const-string v0, "OPPO"

    .line 71
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_87

    :cond_7e
    const-string v0, "EMUI"

    .line 74
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    goto :goto_87

    :cond_83
    const-string v0, "MIUI"

    .line 77
    sput-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    .line 79
    :goto_87
    sget-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getName()Ljava/lang/String;
    .registers 1

    .line 83
    sget-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    if-nez v0, :cond_9

    const-string v0, ""

    .line 84
    invoke-static {v0}, Lcom/codemao/nemo/util/RomUtil;->check(Ljava/lang/String;)Z

    .line 86
    :cond_9
    sget-object v0, Lcom/codemao/nemo/util/RomUtil;->sName:Ljava/lang/String;

    return-object v0
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string v0, "Unable to read prop "

    const-string v1, "Rom"

    const/4 v2, 0x0

    .line 97
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getprop "

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v3, 0x400

    invoke-direct {v5, v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2e} :catch_72
    .catchall {:try_start_5 .. :try_end_2e} :catchall_66

    .line 103
    :try_start_2e
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 104
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_35} :catch_3e
    .catchall {:try_start_2e .. :try_end_35} :catchall_66

    .line 106
    :try_start_35
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
    .catchall {:try_start_35 .. :try_end_38} :catchall_66

    goto :goto_3d

    :catch_39
    move-exception v4

    .line 108
    :try_start_3a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_66

    :goto_3d
    return-object v3

    :catch_3e
    move-exception v3

    .line 115
    :try_start_3f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_3f .. :try_end_51} :catchall_5a

    .line 121
    :try_start_51
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55
    .catchall {:try_start_51 .. :try_end_54} :catchall_5a

    goto :goto_59

    :catch_55
    move-exception v3

    .line 123
    :try_start_56
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5a

    :goto_59
    return-object v2

    :catchall_5a
    move-exception v3

    .line 132
    :try_start_5b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
    .catchall {:try_start_5b .. :try_end_5e} :catchall_64

    goto :goto_63

    :catch_5f
    move-exception v4

    .line 134
    :try_start_60
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 137
    :goto_63
    throw v3
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_64} :catch_72
    .catchall {:try_start_60 .. :try_end_64} :catchall_64

    :catchall_64
    nop

    goto :goto_67

    :catchall_66
    move-object v5, v2

    :goto_67
    if-eqz v5, :cond_71

    .line 160
    :try_start_69
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_71
    :goto_71
    return-object v2

    :catch_72
    move-exception v3

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public static initRom()V
    .registers 4

    .line 210
    invoke-static {}, Lcom/codemao/nemo/util/RomUtil;->getName()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object v1

    const-string v2, "rom_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "rom_name"

    .line 212
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 213
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
