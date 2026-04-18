.class public Lcn/com/chinatelecom/account/api/e/c;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcn/com/chinatelecom/account/api/e/c;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_96

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_13

    goto/16 :goto_96

    :cond_13
    const/4 v1, 0x0

    :try_start_14
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_4b

    :try_start_19
    new-instance p0, Ljava/io/InputStreamReader;

    invoke-direct {p0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_48

    :try_start_1e
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_43

    :goto_23
    :try_start_23
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c
    .catchall {:try_start_23 .. :try_end_2c} :catchall_41

    goto :goto_23

    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_35

    :catch_31
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_35
    :try_start_35
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    :catch_39
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_6d

    goto :goto_71

    :catchall_41
    move-exception v1

    goto :goto_50

    :catchall_43
    move-exception v3

    move-object v4, v3

    move-object v3, v1

    move-object v1, v4

    goto :goto_50

    :catchall_48
    move-exception p0

    move-object v3, v1

    goto :goto_4e

    :catchall_4b
    move-exception p0

    move-object v2, v1

    move-object v3, v2

    :goto_4e
    move-object v1, p0

    move-object p0, v3

    :goto_50
    :try_start_50
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_76

    if-eqz v3, :cond_5d

    :try_start_55
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5d
    :goto_5d
    if-eqz p0, :cond_67

    :try_start_5f
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_67
    :goto_67
    if-eqz v2, :cond_71

    :try_start_69
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_71
    :goto_71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_76
    move-exception v0

    if-eqz v3, :cond_81

    :try_start_79
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_7c} :catch_7d

    goto :goto_81

    :catch_7d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_81
    :goto_81
    if-eqz p0, :cond_8b

    :try_start_83
    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8b
    :goto_8b
    if-eqz v2, :cond_95

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_95
    :goto_95
    throw v0

    :cond_96
    :goto_96
    const-string p0, ""

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/c;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {v0, p1}, Lcn/com/chinatelecom/account/api/e/c;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void

    :cond_10
    invoke-static {p0}, Lcn/com/chinatelecom/account/api/e/c;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/com/chinatelecom/account/api/e/c;->a(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 5

    if-eqz p0, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    :try_start_8
    const-string v0, "ct_account_api_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_1f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    :try_start_8
    const-string v0, "ct_account_api_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1f
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_6e

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    :try_start_9
    new-instance v1, Ljava/io/FileWriter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_3e
    .catchall {:try_start_9 .. :try_end_f} :catchall_3b

    :try_start_f
    new-instance p0, Ljava/io/BufferedWriter;

    invoke-direct {p0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_39
    .catchall {:try_start_f .. :try_end_14} :catchall_58

    :try_start_14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p1, ""

    :cond_1c
    invoke-virtual {p0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_22} :catch_36
    .catchall {:try_start_14 .. :try_end_22} :catchall_33

    :try_start_22
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_26

    goto :goto_2a

    :catch_26
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    :try_start_2a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2d} :catch_2e

    return-void

    :catch_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :catchall_33
    move-exception p1

    move-object v0, p0

    goto :goto_59

    :catch_36
    move-exception p1

    move-object v0, p0

    goto :goto_40

    :catch_39
    move-exception p1

    goto :goto_40

    :catchall_3b
    move-exception p1

    move-object v1, v0

    goto :goto_59

    :catch_3e
    move-exception p1

    move-object v1, v0

    :goto_40
    :try_start_40
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_58

    if-eqz v0, :cond_4d

    :try_start_45
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4d
    :goto_4d
    if-eqz v1, :cond_57

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_57
    :goto_57
    return-void

    :catchall_58
    move-exception p1

    :goto_59
    if-eqz v0, :cond_63

    :try_start_5b
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    :goto_63
    if-eqz v1, :cond_6d

    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_6d

    :catch_69
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6d
    :goto_6d
    throw p1

    :cond_6e
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    :try_start_9
    const-string v1, "ct_account_api_sdk"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1c

    return p0

    :catch_1c
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_20
    return v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4

    const/4 p2, 0x0

    if-eqz p0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_9
    const-string v0, "ct_account_api_sdk"

    invoke-virtual {p0, v0, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_13} :catch_14

    return p0

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    return p2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 6

    const-wide/16 p2, 0x0

    if-eqz p0, :cond_1a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    :try_start_a
    const-string v0, "ct_account_api_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_15} :catch_16

    return-wide p0

    :catch_16
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    return-wide p2
.end method

.method private static b(Landroid/content/Context;)Ljava/io/File;
    .registers 3

    if-eqz p0, :cond_3d

    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/eAccount/Log/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_25

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_25
    new-instance p0, Ljava/io/File;

    const-string v1, "ipa_ol.ds"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_35
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_39

    return-object p0

    :catch_39
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_18

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_8
    const-string v0, "ct_account_api_sdk"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    return-object p2
.end method

.method private static c(Landroid/content/Context;)Ljava/io/File;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_37

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "/eAccount/Log/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_24

    return-object v0

    :cond_24
    new-instance p0, Ljava/io/File;

    const-string v2, "ipa_ol.ds"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2f} :catch_33

    if-nez v1, :cond_32

    return-object v0

    :cond_32
    return-object p0

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_37
    return-object v0
.end method
